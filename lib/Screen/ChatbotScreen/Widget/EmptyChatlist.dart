import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';
import 'package:healme/Screen/ChatbotScreen/Service/BidoScreenController.dart';
//import 'package:mypetworld/pages/Bido/Service/controller.dart';
//import 'package:mypetworld/utils/themes/textstyles.dart';

class EmptyChatList extends StatelessWidget {
  EmptyChatList({super.key});
  BidoController ctrl = Get.put(BidoController());
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(100.w),
            child: Image.asset("lib/base/assets/png/chatbot.png"),
          ),
          Wrap(
            runSpacing: 5.w,
            spacing: 5.w,
            children: [
              for (int i = 0; i < 4; i++)
                InkWell(
                  onTap: () {
                    ctrl.messageText.text =
                        "Who is more active and hard to handle jack russell or German shepheard";
                    ctrl.update();
                  },
                  child: FadeInUp(
                    child: Container(
                      width: 160.w,
                      height: 70.h,
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(-1, 1),
                                color: Colors.grey.withOpacity(.2),
                                spreadRadius: .4,
                                blurRadius: 2)
                          ]),
                      child: Text(
                        "Who is more active and hard to handle jack russell or German shepheard",
                       // style: TextStyles.cirStdBo.copyWith(
                           // fontSize: 11.sp, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                )
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
