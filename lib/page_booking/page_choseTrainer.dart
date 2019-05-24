import 'package:flutter/material.dart';
import 'package:staldjoergensen/page_home/page_homeLogic.dart';


class SettingsWidget extends StatefulWidget {
  SettingsWidget({Key key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => new _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {

  List _cities =
  ["Mikkel", "Tobias"];

  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String _currentCity;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentCity = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String city in _cities) {
      items.add(new DropdownMenuItem(
          value: city,
          child: new Text(city, style: TextStyle(
                color: cBrown,
                ),)
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: cCream,
      child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Vælg Træner ",style: TextStyle(
                color: cBrown,
                fontSize: 20,
              ), ),
              new Container(
                padding: new EdgeInsets.all(0.0),
              ),
              new DropdownButton(
                value: _currentCity,
                items: _dropDownMenuItems,
                onChanged: changedDropDownItem,
              )
            ],
          )
      ),
    );
  }

  void changedDropDownItem(String selectedCity) {
    setState(() {
      _currentCity = selectedCity;
    });
  }

}