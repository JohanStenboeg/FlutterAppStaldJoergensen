//Imported from Web
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:staldjoergensen/page_createUser/page_createUser_design.dart';
import 'package:staldjoergensen/page_createUser/page_createUser_logic.dart';

//Import from other folders
import 'package:staldjoergensen/page_start/page_start_logic.dart';
import 'package:staldjoergensen/page_start/page_start_design.dart';
import 'package:staldjoergensen/page_login/page_login_design.dart';
import 'package:staldjoergensen/page_login/page_login_logic.dart';

//COLORS
Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

void main() => runApp(Page_Start());

class Page_Start extends StatelessWidget {
  
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
                  Page_StartDesign(),
                  Page_Start_Logic(),
                ],
              ),
            )));
  }
}

class Page_Login extends StatelessWidget {
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
                  Page_LoginDesign(),
                  Page_LoginLogic(),
                ],
              ),
            )));
  }
}

class Page_CreateUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stald Jørgensen',
        theme: new ThemeData(scaffoldBackgroundColor: cCream),
        home: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                Page_CreateUserDesign(),
                Page_CreateUserLogic(),
              ],
              backgroundColor: cGreen,
            ),
            body: Container(
              child: Column(
                children: <Widget>[],
              ),
            )));
  }
}
