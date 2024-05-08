import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healme/Screen/ChatbotScreen/Model/AiChatModel.dart';
import 'package:healme/Screen/ChatbotScreen/Service/BidoScreenController.dart';
//import 'package:mypetworld/pages/Bido/Model/AiChatModel.dart';
//import 'package:mypetworld/pages/Bido/Service/controller.dart';
//import 'package:mypetworld/utils/themes/colorss.dart';
//import 'package:mypetworld/utils/themes/textstyles.dart';
//import 'package:typewritertext/typewritertext.dart';

class BiDoChatList extends StatelessWidget {
  BiDoChatList({super.key});
  BidoController ctrl = Get.put(BidoController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        controller: ctrl.scrollController,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            for (AiChatModel data in ctrl.MessageList)
              FadeInRight(
                child: Container(
                  alignment: (data.isUser!)
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    // margin: EdgeInsets.only(left: 100.h),

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        //color: Colorss.primaryOrnge.withOpacity(.2)),
                   // constraints:
                     //   BoxConstraints(maxWidth: 300.w, maxHeight: 500.h),
                   // child: Text(
                      //data.message!,
                      //textAlign:
                         // (data.isUser!) ? TextAlign.right : TextAlign.left,
                     // style: TextStyles.cirStdBook.copyWith(
                        //  fontSize: 12.sp,
                          //color: Colors.black.withOpacity(.6),
                          //fontWeight: FontWeight.w500),
                    ),//
                    // child: TypeWriter.text(
                    //   data,
                    //   alignment: Alignment.centerRight,
                    //   textAlign: TextAlign.right,
                    //   duration: Duration(milliseconds: 50),
                    // ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
