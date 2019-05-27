import 'package:flutter/material.dart';

import 'package:staldjoergensen/page_booking/page_choseTrainer.dart';

import '../main.dart';



//COLORS
Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);



class PageBookingLogic extends StatefulWidget {
  @override
  _BookingLogicState createState() => _BookingLogicState();
}


class _BookingLogicState extends State<PageBookingLogic> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        //Vælg Træner
        SettingsWidget(),

          
        
        //Vælg Dato
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {},
            child: Text(
              'Vælg Dato',
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
        
        //Vælg Tidspunkt
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {},
            child: Text(
              'Vælg Tidspunkt',
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
        //Vælg Hest
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {},
            child: Text(
              'Vælg Hest',
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
        Container(
          //Opret Bruger
          margin: EdgeInsets.all(10.0),

          child: RaisedButton(
            onPressed: () {
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageHome(user: null,)),
              );*/
              return showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(content: Text("Booking oprettet, husk at gå til kurv for at betale."));
                  });
            },
            child: Text(
              'Book Tid',
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
