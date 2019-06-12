//Imported from Web
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:staldjoergensen/page_createUser/page_createUser_logic.dart';
import 'package:staldjoergensen/page_home/page_homeDesign.dart';
import 'package:staldjoergensen/page_home/page_homeLogic.dart';

//Import from other folders
//Start Page
import 'package:staldjoergensen/page_start/page_start_logic.dart';
import 'package:staldjoergensen/page_start/page_start_design.dart';
//Login Page
import 'package:staldjoergensen/page_login/page_login_logic.dart';
//Home Page

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

// PAGE Login************************************************************************************
class PageLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stald Jørgensen',
      theme: new ThemeData(scaffoldBackgroundColor: cCream),
      home: PageLoginLogic(),
    );
  }
}

// PAGE Create User ************************************************************************************
class PageCreateUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stald Jørgensen',
      theme: new ThemeData(scaffoldBackgroundColor: cCream),
      home: PageCreateUserLogic(),
    );
  }
}

// PAGE HOME ************************************************************************************
class PageHome extends StatefulWidget {
  final FirebaseUser user;
  const PageHome({Key key, @required this.user}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<PageHome> {
  var user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cGreen,
        title: Text('Home'),
      ),
      backgroundColor: cCream,
      body: Container(
          child: ListView(
        children: <Widget>[
          PageHomeDesign(),
          PageHomeLogic(),
          StreamBuilder<DocumentSnapshot>(
            stream: Firestore.instance
                .collection('users')
                .document(widget.user.uid)
                .snapshots(),
            builder: (BuildContext context,
                AsyncSnapshot<DocumentSnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData) {
                return checkRole(snapshot.data);
              }
              return LinearProgressIndicator();
            },
          ),
        ],
      )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: cGreen,
              ),
              child: ListView(
                children: <Widget>[
                  Text("Bruger"),
                  Text("Email ${widget.user.email}"),
                  Text("UID ${widget.user.uid}")
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('Hjem'),
              onTap: () {
                Navigator.pop(
                  context,
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

  Center checkRole(DocumentSnapshot snapshot) {
    if (snapshot.data == null) {
      return Center(
        child: Text('no data set in the userId document in firestore'),
      );
    }
    if (snapshot.data['role'] == 'admin') {
      return adminPage(snapshot);
    } else {
      return userPage(snapshot);
    }
  }

  Center adminPage(DocumentSnapshot snapshot) {
    return Center(
        child: Text(
      '${snapshot.data['role']} ${snapshot.data['name']}',
      style: TextStyle(color: cBrown, fontSize: 40),
      textAlign: TextAlign.center,
    ));
  }

  Center userPage(DocumentSnapshot snapshot) {
    return Center(
      child: 
          Text(snapshot.data['name'],
              style: TextStyle(color: cBrown, fontSize: 40),
              textAlign: TextAlign.center),
          
        
      
    );
  }
}

//Show Horse ************************************************************************************
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
                  decoration: BoxDecoration(
                    color: cGreen,
                  ),
                  child: ListView(
                    children: <Widget>[
                      Text("More text"),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Hjem'),
                  onTap: () {
                    Navigator.popUntil(context,
                        ModalRoute.withName(Navigator.defaultRouteName));
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageShowHorse()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Indstillinger'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageSettings()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

//ADD HORSE************************************************************************************
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
                  decoration: BoxDecoration(
                    color: cGreen,
                  ),
                  child: ListView(
                    children: <Widget>[
                      Text("More text"),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Hjem'),
                  onTap: () {
                    Navigator.popUntil(context,
                        ModalRoute.withName(Navigator.defaultRouteName));
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageShowHorse()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Indstillinger'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageSettings()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

//Booking ************************************************************************************
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
                  decoration: BoxDecoration(
                    color: cGreen,
                  ),
                  child: ListView(
                    children: <Widget>[
                      Text("More text"),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Hjem'),
                  onTap: () {
                    Navigator.popUntil(context,
                        ModalRoute.withName(Navigator.defaultRouteName));
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageShowHorse()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Indstillinger'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageSettings()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

//Settings  ************************************************************************************
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
                  decoration: BoxDecoration(
                    color: cGreen,
                  ),
                  child: ListView(
                    children: <Widget>[
                      Text("More text"),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Hjem'),
                  onTap: () {
                    Navigator.popUntil(context,
                        ModalRoute.withName(Navigator.defaultRouteName));
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageShowHorse()));
                  },
                ),
                ListTile(
                  trailing: Icon(Icons.keyboard_arrow_right),
                  leading: Icon(Icons.settings),
                  title: Text('Indstillinger'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageSettings()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
