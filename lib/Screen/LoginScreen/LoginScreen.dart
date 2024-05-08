import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red.shade200,
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/welcome.png"),
 Text("Welcome back",style: GoogleFonts.epilogue(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.w800),),
     SizedBox(height: 4.h,),
    TextFormField(
      decoration: InputDecoration(label: Text("Email address"),suffixIcon: Icon(Icons.message)),
    ),
    TextFormField(
      decoration: InputDecoration(label: Text("Password"),suffixIcon: Icon(Icons.password)),
    )
     

      ],
    )
      )
    );
  }
}