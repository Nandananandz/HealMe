import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:healme/Screen/ChatbotScreen/Service/BidoScreenController.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
//import 'package:mypetworld/pages/Bido/Model/AiChatModel.dart';
//import 'package:mypetworld/pages/Bido/Service/controller.dart';
//import 'package:mypetworld/utils/themes/colorss.dart';
//import 'package:mypetworld/utils/themes/textstyles.dart';

class BidoTypeBox extends StatelessWidget {
  BidoTypeBox({super.key});
  BidoController ctrl = Get.put(BidoController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              constraints: BoxConstraints(
                maxHeight: 100,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFE0E0E0).withOpacity(.8)),
              child: TextField(
                maxLines: null,
                controller: ctrl.messageText,
               // style: TextStyles.cirStdBook.copyWith(
                 // fontSize: 16.sp,
                  //fontWeight: FontWeight.w500,
                ),
                //decoration: InputDecoration(
                  //border: InputBorder.none,
                  //hintText: "Ask me anything",
                  //isDense: true,
                  //isCollapsed: true,
                  //hintStyle: TextStyles.cirStdBook.copyWith(
                     // fontSize: 16.sp,
                      //color: Colors.black.withOpacity(.6),
                      //fontWeight: FontWeight.w500),
                ),
              ),
           // ),
         // ),
          SizedBox(
            width: 10.w,
          ),
          InkWell(
            onTap: () {
              if (ctrl.messageText.text.isNotEmpty && !ctrl.messageLoading) {
                ctrl.promte(ctrl.messageText.text);
                ctrl.messageText.clear();

                ctrl.update();
              }
            },
            child: CircleAvatar(
              radius: 20.w,
           //   backgroundColor: Colorss.primaryOrnge,
             // child: (ctrl.messageLoading)
                 // ? LoadingAnimationWidget.prograssiveDots(
                  //    color: Colorss.primaryWhite, size: 24)
                  //: Icon(
                   //   Icons.send,
                    //  color: Colors.white,
                    ),
            ),
         // )
        ],
      ),
    );
  }
}
