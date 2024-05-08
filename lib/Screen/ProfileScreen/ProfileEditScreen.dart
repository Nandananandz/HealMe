import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileViewScreen extends StatelessWidget {

  ProfileViewScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(left:9.w),
        child: Column(
          children: [
            SizedBox(
              height: 8.h),
               ClipOval(
                    child: Image.asset(
                            'assets/profile.png',
                            width: 12.h,
                            height: 12.h,
                            fit: BoxFit.cover,
                          )
                       
                  ),
       SizedBox(
              height: 6.h),
        
            _text("Full Name",),
            _text("Job Type",),
            _text("Job Category",),
            _text("Experience", ),
            _text("Current Job Title", ),
            _text("Resume Link",),
          SizedBox(height: 4.h,),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
                width: 80.w,
                height: 6.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.w),color: Colors.blue.shade400),
                child: Text("Submit",style: GoogleFonts.epilogue(color: Colors.white),),
                
              ),
          ),
          ],
        ),
      ),
    );
  }
}

_text(
  String title,
 
) {
  return Container(
    alignment: Alignment.centerLeft,
    //height: 10.89.h,
    margin: EdgeInsets.only(top: 6),
    width: 80.36.w,
    height: 8.h,
    padding: EdgeInsets.symmetric(horizontal: 4.2.w, vertical: 10),
    decoration: BoxDecoration(
      color: Color(0xFFE8ECFF),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
              color: Colors.grey, fontSize: 10.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 6,
        ),
        // Text(
        //   "Data",
        //   style: GoogleFonts.poppins(
        //       color: Color(0xff1D2226),
        //       fontSize: 11.sp,
        //       fontWeight: FontWeight.w500),
        // ),

      ],
    ),
  );
}