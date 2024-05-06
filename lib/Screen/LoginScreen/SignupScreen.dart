import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healme/Screen/HomeScreen/HomeScreen.dart';
import 'package:sizer/sizer.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
     children: [
      SizedBox(height: 6.h,),
      Text("Let's Start",style: GoogleFonts.epilogue(fontSize: 18.sp,color: Colors.lightBlue,fontWeight: FontWeight.w800),),
       SizedBox(height: 3.h,),
       SizedBox(
        width: 55.w,
        height: 5.h,
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(labelText:"What should we call u ?"),
        ),
      ),
       SizedBox(height: 3.h,),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 3.w),
          Text("Email Address",style: GoogleFonts.epilogue(fontSize: 13.sp,color: Colors.black,fontWeight: FontWeight.w500,),),
           SizedBox(width: 3.w,),Icon(Icons.email),Expanded(child: Container()),Icon(Icons.chevron_right),SizedBox(width: 3.w),
        ],
      ),
       SizedBox(height: 3.w,),
      Row(
        children: [
          SizedBox(width: 3.w),
          Text("Password",style: GoogleFonts.epilogue(fontSize: 13.sp,color: Colors.black,fontWeight: FontWeight.w500),),
        SizedBox(width: 3.w),  Icon(Icons.password),Expanded(child: Container()),Icon(Icons.chevron_right),SizedBox(width: 3.w),
        ],
      ),
      SizedBox(height: 10.h,),
      InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
        },
        child: Container(width: 50.w,
        height: 4.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(2.9.w)),
        child: Text("Sign up",style: GoogleFonts.epilogue(color: Colors.white),),),
      ),

      
     ],
    )
      )
    );
  }
}