import 'package:flutter/material.dart';

class Page_StartDesign extends StatelessWidget {
  final Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
  final Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
  final Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset('assets/logo.png'),
        Text(
          'Velkommen til',
          style: TextStyle(color: cBrown, fontSize: 15),
          textAlign: TextAlign.center,
        ),
        Text(
          'Stald Jørgensen',
          style: TextStyle(color: cBrown, fontSize: 40),
          textAlign: TextAlign.center,
        ),
        Text(
          ' & TJ Eventing',
          style: TextStyle(color: cBrown, fontSize: 40),
          textAlign: TextAlign.center,
          
        ),
        
        
      ],
    );
  }
}
