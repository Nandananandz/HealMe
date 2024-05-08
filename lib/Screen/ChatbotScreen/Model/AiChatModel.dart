import 'package:hive_flutter/hive_flutter.dart';
//import  'AiChatModel.g.dart';

@HiveType(typeId: 0)
class AiChatModel {
  @HiveField(0)
  bool? isUser;
  @HiveField(1)
  bool? isAI;
  @HiveField(2)
  String? message;
  @HiveField(3)
  String? groupID;
  AiChatModel({this.isAI, this.isUser, this.message, this.groupID});
}
