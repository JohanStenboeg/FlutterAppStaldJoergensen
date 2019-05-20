import 'package:flutter/material.dart';
import 'package:staldjoergensen/main.dart';

//COLORS
Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

class Page_CreateUserLogic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Page_CreateUserState();
  }
}

class _Page_CreateUserState extends State<Page_CreateUserLogic> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Fornavn(e)"),
        TextField(),
        Text("Efternavn"),
        TextField(),
        Text("Email"),
        TextField(),
        Text("Telefon Nummer"),
        TextField(maxLength: 8),
        Text("Kodeord"),
        TextField(),
        Container(
          //Opret Bruger
          margin: EdgeInsets.all(10.0),

          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page_Login()),);
              return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        content: Text("Din bruger er nu oprettet."));
                  });
            },
            child: Text(
              'Opret Bruger',
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
