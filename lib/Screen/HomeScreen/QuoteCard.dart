import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
 
class QuoteCard extends StatelessWidget {
  String textdata;
   QuoteCard({super.key ,required this.textdata});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 89.w,
      height: 10.h,
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 3.w,right: 3.w),
      decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(3.w)),
      child: Text(textdata,style: GoogleFonts.epilogue(color: Colors.grey.shade600,fontWeight: FontWeight.w700),),
    );
  }
}