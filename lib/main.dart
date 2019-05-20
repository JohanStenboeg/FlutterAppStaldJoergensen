//Imported from Web
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
//Import from other folders
import 'package:staldjoergensen/product_manager.dart';


void main() => runApp(Page_Start());

class Page_Start extends StatelessWidget {
  Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
  Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
  Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stald Jørgensen',
        theme: new ThemeData(scaffoldBackgroundColor: cCream),
        home: Scaffold(
            appBar: AppBar(
              actions: <Widget>[],
              backgroundColor: cGreen,
            ),
            body: Container(
              child: Column(
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
                  ProductManager(),
                ],
              ),
            )));
  }
}
