import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healme/Screen/HomeScreen/HomeScreen.dart';
import 'package:healme/Screen/LoginScreen/SignupScreen.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red.shade200,
    body: Padding(
      padding: EdgeInsets.only(left: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 50.w,
              height: 50.w,
              child: Image.asset("assets/welcome.png")),
          ),
     Text("Welcome back",style: GoogleFonts.epilogue(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.w800),),
       SizedBox(height: 4.h,),
      Container(
        width: 80.w,
        height: 8.h,
         margin: EdgeInsets.only(left: 5.w),
        child: TextFormField(
          decoration: InputDecoration(label: Text("Email address"),suffixIcon: Icon(Icons.message)),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 5.w),
        width: 80.w,
        height: 8.h,
        child: TextFormField(
          decoration: InputDecoration(label: Text("Password"),suffixIcon: Icon(Icons.password)),
        ),
      ),
      SizedBox(height: 3.h,),
      Padding(
        padding: EdgeInsets.only(left: 5.w),
        child: InkWell(
          onTap: () {
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
          },
          child: Container(
            width: 80.w,
            height: 6.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.w),color: Colors.black),
            child: Text("login",style: GoogleFonts.epilogue(color: Colors.white),),
            
          ),
        ),
      ),
       
    Expanded(child: Container()),
     Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupScreen()));
         
        },
        
        child: Text("new user?,Sign up..",style: GoogleFonts.epilogue(fontSize: 10.sp,color: Colors.grey,fontWeight: FontWeight.w600),))),
    SizedBox(height: 4.h,),

        ],
      ),
    )
      )
    );
  }
}