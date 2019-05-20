import 'package:flutter/material.dart';
import 'package:staldjoergensen/main.dart';

//COLORS
Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

class Page_LoginLogic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PageLoginState();
  }
}

class _PageLoginState extends State<Page_LoginLogic> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //Login
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              
            },
            child: Text(
              'Login',
              style: TextStyle(
                color: cBrown,
                fontSize: 20,
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(50.0)),
            elevation: 2.0,
            splashColor: cGreen,
          ),
        ),
      ],
    );
  }
}
