import 'package:flutter/material.dart';
import 'package:staldjoergensen/main.dart';

//COLORS
Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

class Page_LoginLogic extends StatefulWidget {
  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<Page_LoginLogic> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          obscureText: false,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20.0),
              hintText: "Email",
          )
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.0),
            hintText: "Password",
          ),
        ),
        //Login
          RaisedButton(
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
      ],
    );
  }
        
     
  }

