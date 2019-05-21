import 'package:flutter/material.dart';
import 'package:staldjoergensen/main.dart';

//COLORS
Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

class PageShowHorseLogic extends StatefulWidget {
  @override
  _PageShowHorseLogicState createState() => _PageShowHorseLogicState();
}

class _PageShowHorseLogicState extends State<PageShowHorseLogic> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Horse 1
        RaisedButton(
          onPressed: () {
            
            
          },
          child: Text(
            'Choko',
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
         //Horse 2
        RaisedButton(
          onPressed: () {
            
          },
          child: Text(
            'Bodil',
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
        //Tilføj Hest
        RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageAddHorse()),
            );
          },
          child: Text(
            'Tilføj Hest',
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
