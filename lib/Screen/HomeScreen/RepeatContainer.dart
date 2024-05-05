import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class RepeatContainer extends StatelessWidget {
  String Headertext;
  String describetext;
  String goto; 
  Color ctColor;
   RepeatContainer({super.key,required this.Headertext,required this.describetext,required this.goto,required this.ctColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 89.w,
      height: 19.h,
      padding: EdgeInsets.only(left: 3.w,right: 3.w),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.w),color: ctColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:1.h),
          Text(Headertext,style: GoogleFonts.rubik(fontSize: 20.sp,color: Colors.brown.shade700,fontWeight: FontWeight.w800),),
          SizedBox(height:1.h),
           Text(describetext,style: GoogleFonts.rubik(fontSize: 10.sp,color: Colors.brown.shade500,fontWeight: FontWeight.w500),),
           SizedBox(height:2.h),
            Row(
              children: [
                Text(goto,style: GoogleFonts.rubik(fontSize: 12.sp,color: Colors.brown.shade600,fontWeight: FontWeight.w700),),
             Icon(Icons.keyboard_arrow_right,color: Colors.brown.shade500,),
              ],
            )
          
        ],
      ),
    );
  }
}