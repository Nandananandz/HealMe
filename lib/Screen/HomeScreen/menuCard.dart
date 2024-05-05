import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  String textValue;
  Color bgColor;//ethokkk varible veno athokkee egane evide kodukkam
   MenuCard({super.key, required this.textValue, required this.bgColor}); // ethe pore rewuired kodukkan marakalle

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(textValue),// anittu ath evide ano kanikande avide pass cheythu kodukkuka
    );
  }
}