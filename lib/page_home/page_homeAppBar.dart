import 'package:flutter/material.dart';

import 'DrawerItem.dart';
import 'page_homeAppBar2.dart';

class NavigationDrawerDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NavigationDrawerState(); 
}

class NavigationDrawerState extends State<NavigationDrawerDemo> {
  int _selectedIndex = 0;

  final drawerItems = [
    new DrawerItem("Hjem", Icons.local_airport),
    new DrawerItem("Træning", Icons.local_pizza),
    new DrawerItem("Tilføj Hest", Icons.local_cafe)
  ];

  Widget _getDrawerItemScreen(int pos)  => FirstScreen(drawerItem: drawerItems[_selectedIndex]); 

  Widget _onSelectItem(int index) {
    setState(() {
      _selectedIndex = index;
      _getDrawerItemScreen(_selectedIndex);
    });
    Navigator.of(context).pop(); // close the drawer
//    Navigator.push(
//      context,
//      new MaterialPageRoute(
//        builder: (context) => _getDrawerItemScreen(_selectedIndex),
//      ),
//    );
  }

  @override
  Widget build(BuildContext context) {
    var drawerOptions = [];
    for (var i = 0; i < drawerItems.length; i++) {
      var d = drawerItems[i];
      drawerOptions.add (new ListTile(
        leading: new Icon(d.icon),
        title: new Text(
          d.title,
          style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
        ),
        selected: i == _selectedIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation Drawer"),
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text(
                  "Yuvraj Pandey",
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
                accountEmail: new Text(
                  "yuvrajn.pandey@gmail.com",
                  style: new TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.w500),
                )),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemScreen(_selectedIndex),
    );
  }
}