import 'package:flutter/material.dart';

class PageAddHorseDesign extends StatelessWidget {
  final Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
  final Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
  final Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       Container(
          child: Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/logo.png',
              scale: 3,
            ),
          ),
        ), 
        
      ],
    );
  }
}
