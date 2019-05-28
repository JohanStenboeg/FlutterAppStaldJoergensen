import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import '../main.dart';

//COLORS
Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

class PageCreateUserLogic extends StatefulWidget {
  @override
  _PageCreateUserLogicState createState() => _PageCreateUserLogicState();
}

class _PageCreateUserLogicState extends State<PageCreateUserLogic> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Container(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/logo.png',
                    scale: 3,
                  ),
                ),
              ),
              TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'Skriv din email';
                  }
                },
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (input) => _email = input,
              ),
              TextFormField(
                validator: (input) {
                  if (input.length < 6) {
                    return 'Kodeord skal være på mindst 6 tegn';
                  }
                },
                decoration: InputDecoration(labelText: 'Kodeord'),
                onSaved: (input) => _password = input,
                obscureText: true,
              ),
              RaisedButton(
                onPressed: signUp,
                child: Text('Opret bruger'),
              ),
            ],
          )),
    );
  }

  void signUp() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: _email, password: _password);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => PageLogin()));
      } catch (e) {
        print(e.message);
      }
    }
  }
}
