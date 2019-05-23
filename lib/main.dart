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

//AddHorse Page
import 'package:staldjoergensen/page_addHorse/page_addHorseDesign.dart';
import 'package:staldjoergensen/page_addHorse/page_addHorseLogic.dart';
//ShowHorse Page
import 'package:staldjoergensen/page_showHorse/page_showHorseDesign.dart';
import 'package:staldjoergensen/page_showHorse/page_showHorseLogic.dart';
//SettingsPage
import 'package:staldjoergensen/page_settings/page_settingsDesign.dart';
import 'package:staldjoergensen/page_settings/page_settingsLogic.dart';
//Booking Page
import 'package:staldjoergensen/page_booking/page_bookingDesign.dart';
import 'package:staldjoergensen/page_booking/page_bookingLogic.dart';

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

const String loggedInUser = "Johan";

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stald Jørgensen"),
        backgroundColor: cGreen,
      ),
      backgroundColor: cCream,
      body: Container(
          child: ListView(
        children: <Widget>[
          PageHomeDesign(),
          PageHomeLogic(),
        ],
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: cGreen, ),
              

              child: ListView(
                children: <Widget>[
                  Text(loggedInUser),
                  Text("More text"),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('Hjem'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageHome()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Book Træning'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageBooking()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.pets),
              title: Text('Tilføj Hest'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageShowHorse()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Indstillinger'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageSettings()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
//Show Horse
class PageShowHorse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stald Jørgensen',
        theme: new ThemeData(scaffoldBackgroundColor: cCream),
        home: Scaffold(
          appBar: AppBar(
            title: new Text("Tilføjede Heste"),
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
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
              decoration: BoxDecoration(color: cGreen, ),
              

              child: ListView(
                children: <Widget>[
                  Text(loggedInUser),
                  Text("More text"),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Hjem'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageHome()),
                );
              },
            ),
            ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              leading: Icon(Icons.book),
              title: Text('Book Træning'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageBooking()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.pets),
              title: Text('Tilføj Hest'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageShowHorse()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Indstillinger'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageSettings()));
              },
            ),
          ],
        ),
      ),
        ));
  }
}
//ADD HORSE
class PageAddHorse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stald Jørgensen',
        theme: new ThemeData(scaffoldBackgroundColor: cCream),
        home: Scaffold(
          appBar: AppBar(
            title: new Text("Tilføj Hest"),
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
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
              decoration: BoxDecoration(color: cGreen, ),
              

              child: ListView(
                children: <Widget>[
                  Text(loggedInUser),
                  Text("More text"),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Hjem'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageHome()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Book Træning'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageBooking()),
                );
              },
            ),
            ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              leading: Icon(Icons.pets),
              title: Text('Tilføj Hest'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageShowHorse()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Indstillinger'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageSettings()));
              },
            ),
          ],
        ),
      ),
        ));
  }
}
//Booking
class PageBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stald Jørgensen',
        theme: new ThemeData(scaffoldBackgroundColor: cCream),
        home: Scaffold(
          appBar: AppBar(
            title: new Text("Booking"),
            actions: <Widget>[],
            backgroundColor: cGreen,
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                PageBookingDesign(),
                PageBookingLogic(),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
              decoration: BoxDecoration(color: cGreen, ),
              

              child: ListView(
                children: <Widget>[
                  Text(loggedInUser),
                  Text("More text"),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Hjem'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageHome()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Book Træning'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageBooking()),
                );
              },
            ),
            ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              leading: Icon(Icons.pets),
              title: Text('Tilføj Hest'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageShowHorse()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Indstillinger'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageSettings()));
              },
            ),
          ],
        ),
      ),
        ));
  }
}
//Settings
class PageSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stald Jørgensen',
        theme: new ThemeData(scaffoldBackgroundColor: cCream),
        home: Scaffold(
          appBar: AppBar(
            title: new Text("Indstillinger"),
            actions: <Widget>[],
            backgroundColor: cGreen,
          ),
          body: Container(
            child: ListView(
              children: <Widget>[
                PageSettingsDesign(),
                PageSettingsLogic(),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
              decoration: BoxDecoration(color: cGreen, ),
              

              child: ListView(
                children: <Widget>[
                  Text(loggedInUser),
                  Text("More text"),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Hjem'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageHome()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Book Træning'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageBooking()),
                );
              },
            ),
            ListTile(
              trailing: Icon(Icons.keyboard_arrow_right),
              leading: Icon(Icons.pets),
              title: Text('Tilføj Hest'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageShowHorse()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Indstillinger'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageSettings()));
              },
            ),
          ],
        ),
      ),
        ));
  }
}