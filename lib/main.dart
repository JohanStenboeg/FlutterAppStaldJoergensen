//Imported from Web
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:staldjoergensen/page_createUser/page_createUser_design.dart';
import 'package:staldjoergensen/page_createUser/page_createUser_logic.dart';

//Import from other folders
//Start Page
import 'package:staldjoergensen/page_start/page_start_logic.dart';
import 'package:staldjoergensen/page_start/page_start_design.dart';
//Login Page
import 'package:staldjoergensen/page_login/page_login_design.dart';
import 'package:staldjoergensen/page_login/page_login_logic.dart';
//Home Page
import 'package:staldjoergensen/page_home/page_homeDesign.dart';
import 'package:staldjoergensen/page_home/page_homeLogic.dart';
import 'package:staldjoergensen/page_home/page_homeAppBar.dart';
//AddHorse Page
import 'package:staldjoergensen/page_addHorse/page_addHorseDesign.dart';
import 'package:staldjoergensen/page_addHorse/page_addHorseLogic.dart';
//ShowHorse Page
import 'package:staldjoergensen/page_showHorse/page_showHorseDesign.dart';
import 'package:staldjoergensen/page_showHorse/page_showHorseLogic.dart';

//COLORS
Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

void main() => runApp(PageStart());

class PageStart extends StatelessWidget {
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
            child: ListView(
              children: <Widget>[
                PageStartDesign(),
                PageStartLogic(),
              ],
            ),
          ),
        ));
  }
}

class PageLogin extends StatelessWidget {
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
              child: ListView(
                children: <Widget>[
                  PageLoginDesign(),
                  PageLoginLogic(),
                ],
              ),
            )));
  }
}

class PageCreateUser extends StatelessWidget {
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
              child: ListView(
                children: <Widget>[
                  PageCreateUserDesign(),
                  PageCreateUserLogic(),
                ],
              ),
            )));
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stald Jørgensen',
        theme: new ThemeData(scaffoldBackgroundColor: cCream),
        home: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                NavigationDrawerDemo(),
              ],
              backgroundColor: cGreen,
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  PageHomeDesign(),
                  PageHomeLogic(),
                ],
              ),
            )));
  }
}

class PageShowHorse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stald Jørgensen',
        theme: new ThemeData(scaffoldBackgroundColor: cCream),
        home: Scaffold(
            appBar: AppBar(title: new Text("Tilføjede Heste"),
              actions: <Widget>[],
              backgroundColor: cGreen,
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  PageShowHorseDesign(),
                  PageShowHorseLogic(),
                ],
              ),
            )));
  }
}
class PageAddHorse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stald Jørgensen',
        theme: new ThemeData(scaffoldBackgroundColor: cCream),
        home: Scaffold(
            appBar: AppBar(title: new Text("Tilføj Hest"),
              actions: <Widget>[],
              backgroundColor: cGreen,
            ),
            body: Container(
              child: ListView(
                children: <Widget>[
                  PageAddHorseDesign(),
                  PageAddHorseLogic(),
                ],
              ),
            )));
  }
}
//