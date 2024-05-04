import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
    body: Column(
      children: [
        Text("Lets Start",style: TextStyle(fontSize: 12.sp),)
      ],
    )
      )
    );
  }
}