import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:healme/Screen/ChatbotScreen/Model/AiChatModel.dart';
import 'package:healme/Screen/ChatbotScreen/Model/AiGroupModel.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:http/http.dart';
//import 'package:mypetworld/pages/Bido/Model/AiChatModel.dart';
//import 'package:mypetworld/pages/Bido/Model/AiGroupModel.dart';

class BidoController extends GetxController {
  String apiKey = "AIzaSyDUpu8GeTUX3le714BFoyNrVcebEXWsDqM";
  TextEditingController messageText = TextEditingController();
  List<AiChatModel> MessageList = [];
  List<AiGroupModel> GroupList = [];
  ScrollController scrollController = ScrollController();
  bool isHistory = false;
  String titleMessage = "";
  String groupID = "";

  bool messageLoading = false;

  getMessages(String groupId) async {
    Box bx = await Hive.openBox("AI_MESSAGE");
    MessageList.clear();
    isHistory = false;
    for (var data in bx.keys) {
      AiChatModel model = bx.get(data);

      if (model.groupID == groupId) {
        MessageList.add(model);
      }
    }
    update();
  }

  getGroupList() async {
    Box bx = await Hive.openBox("AI_MESSAGE_GROUP");
    print(bx.keys);
    for (var data in bx.keys) {
      GroupList.add(bx.get(data));
      update();
      print(data);
    }
  }

  setNewGroup() async {
    Box bx = await Hive.openBox("AI_MESSAGE_GROUP");
    GroupList.add(AiGroupModel(
        groupId: groupID, titleMessage: titleMessage, datatime: groupID));
    bx.put(
        groupID,
        AiGroupModel(
            groupId: groupID, titleMessage: titleMessage, datatime: groupID));
    update();
    print("group saved");
  }

  saveMessage(AiChatModel model) async {
    Box bx = await Hive.openBox("AI_MESSAGE");
    bx.put(DateTime.now().toString(), model);
    print("message saved");
  }

  promte(String message) async {
    print(message);
    messageLoading = true;
    update();
    if (titleMessage == "") {
      titleMessage = message;
      setNewGroup();
    }
    MessageList.add(AiChatModel(
        isAI: false, isUser: true, message: message, groupID: groupID));
    saveMessage(AiChatModel(
        isAI: false, isUser: true, message: message, groupID: groupID));
    update();
    final Response =
        await post(Uri.parse("https://api.openai.com/v1/completions"),
            headers: {
              "Content-Type": "application/json",
              "Authorization":
                  "Bearer sk-proj-BohsF29Y2Wrp9YeZfG34T3BlbkFJFifA0TWMI1mRVy8YBpnj"
            },
            body: json.encode({
              "model": "gpt-3.5-turbo-instruct",
              "prompt": message +
                  "make all response related to pets and it related things maximum in 50 words and also include content from https://shop.mypetworld.app/",
              "max_tokens": 1000,
              "temperature": .7
            }));
    messageLoading = false;
    
    update();
    print(Response.body);

    if (Response.statusCode == 200) {
      var data = json.decode(Response.body);
      print(data["usage"]["total_tokens"]);
      MessageList.add(AiChatModel(
          isAI: true,
          isUser: false,
          groupID: groupID,
          message:
              data["choices"][0]["text"].toString().replaceFirst("\n", "")));
      saveMessage(AiChatModel(
          isAI: true,
          isUser: false,
          groupID: groupID,
          message:
              data["choices"][0]["text"].toString().replaceFirst("\n\n", "")));
      update();

      await Future.delayed(Duration(milliseconds: 800));
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(seconds: 1), // Adjust the duration as needed
        curve: Curves.easeOut,
      );
      update();
    }
    //print(Response.body);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    groupID = DateTime.now().toString();
    super.onInit();
    getGroupList();
  }
}
