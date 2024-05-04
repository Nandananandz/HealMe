import 'package:flutter/material.dart';
import 'package:healme/Screen/LoginScreen/LoginScreen.dart';

void main() {
  runApp(const HealMe());
}

class HealMe extends StatelessWidget {
  const HealMe({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:LoginScreen());
  }
}
 