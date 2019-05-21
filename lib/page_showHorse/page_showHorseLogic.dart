import 'package:flutter/material.dart';
import 'package:staldjoergensen/main.dart';

//COLORS
Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

class Page_ShowHorseLogic extends StatefulWidget {
  @override
  _Page_ShowHorseLogicState createState() => _Page_ShowHorseLogicState();
}

class _Page_ShowHorseLogicState extends State<Page_ShowHorseLogic> {
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
              MaterialPageRoute(builder: (context) => Page_AddHorse()),
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
