import 'package:flutter/material.dart';
import 'package:healme/Screen/FeelingScreen/HappyScreen.dart';
import 'package:healme/Screen/HomeScreen/HomeScreen.dart';
import 'package:healme/Screen/JournalScreen/JournalScreen.dart';
import 'package:healme/Screen/LoginScreen/LoginScreen.dart';
import 'package:healme/Screen/LoginScreen/SignupScreen.dart';
import 'package:sizer/sizer.dart';
double width = 3.8;
 double height = 8.9;
 double fontsize = 1.2;
void main() {
  runApp( HealMe());
}

class HealMe extends StatelessWidget {
   HealMe({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return 
    Sizer(
      builder: (context,Orientation,DeviceType) {
        return MaterialApp(home:LoginScreen());
      }
    );
  }
}
 