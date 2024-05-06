import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healme/Screen/HomeScreen/QuoteCard.dart';
import 'package:healme/Screen/HomeScreen/RepeatContainer.dart';
import 'package:sizer/sizer.dart';

class CalmScreen extends StatelessWidget {
   CalmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 6.w),
          child: SingleChildScrollView(
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 3.h,),
              Row(
                children: [
                  Container(
                   width: 10.w,
                   height: 10.w,
                  
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.w),color: Colors.blueAccent),
                   child: Icon(Icons.person_2,size: 8.w,),
                  ),
                  Expanded(child: Container()),
                  Icon(Icons.notifications),
                  SizedBox(width: 4.w,),
                ],
              ),
              SizedBox(height: 2.h,),
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("You are feeling",style: GoogleFonts.epilogue(color:Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w600, ),),
                   Text("Calm🥰",style: GoogleFonts.epilogue(color:Colors.black,fontSize: 16.sp,fontWeight: FontWeight.w800 ),)
                     
                   ],
                 ),
                   SizedBox(height: 2.h,),
                     Row(
              children: [
                Container(width: 42.w,
                        height: 7.h,
                        decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(3.w)),
                        child: Row(
                          children: [
                            SizedBox(width: 4.w,),
                            Icon(Icons.note_add,color:  Colors.grey.shade700,),
                            SizedBox(width: 2.w,),
                            Text("Journal",style: GoogleFonts.epilogue(color: Colors.grey.shade700,fontSize: 12.sp,fontWeight: FontWeight.w500),)
                          ],
                        ),
                     ),
                      SizedBox(width: 4.w,),
                 Container(width: 42.w,
                    height: 7.h,
                    decoration: BoxDecoration(color: Colors.grey.shade300,borderRadius: BorderRadius.circular(3.w)),
                    child: Row(
                      children: [
                        SizedBox(width: 4.w,),
                        Icon(Icons.assessment,color:  Colors.grey.shade700,),
                        SizedBox(width: 2.w,),
                        Text("Assesment",style: GoogleFonts.epilogue(color: Colors.grey.shade700,fontSize: 12.sp,fontWeight: FontWeight.w500),)
                      ],
                    ),
                 ),
              ],
            ),
            SizedBox(height: 3.h,)   ,
             QuoteCard(textdata: "“Calmness is the  the ability to deal with the situations effectivily.but it doesn't mean there is nothing to worry”") ,
                     SizedBox(height: 3.h,)   ,
                     RepeatContainer(Headertext: "Talk to Someone", describetext: "Human relationships are rich and they're messy and demanding. And we clean them up with technology.Share your thoughts our friend or a chat bot", goto: "Know more", ctColor: Colors.amber.shade100)
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}