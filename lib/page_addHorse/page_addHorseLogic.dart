import 'package:flutter/material.dart';
import 'package:staldjoergensen/main.dart';

//COLORS
Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

class Page_AddHorseLogic extends StatefulWidget {
  @override
  _Page_AddHorseLogicState createState() => _Page_AddHorseLogicState();
}

class _Page_AddHorseLogicState extends State<Page_AddHorseLogic> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //Hestens Navn
        TextField(
            obscureText: false,
            style: style,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20.0),
              hintText: "Hestens navn",
            )),
        //Hestens Alder
        TextField(
            obscureText: false,
            style: style,
            maxLength: 2,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20.0),
              hintText: "Hestens Alder",
            )),
        //Hestens Klasse
        TextField(
            obscureText: false,
            style: style,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20.0),
              hintText: "Hestens Klasse",
            )),
            //Læge Telefon
        TextField(
            obscureText: false,
            style: style,
            maxLength: 8,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20.0),
              hintText: "Læge Telefon Nummer",
            )),
            //Ejer Telefon
        TextField(
            obscureText: false,
            style: style,
            maxLength: 8,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20.0),
              hintText: "Ejer Telefon Nummer",
            )),

        //Tilføj Hest
        RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page_ShowHorse()),);
              return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        content: Text("Din hest er nu tilføjet."));
                  });
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
