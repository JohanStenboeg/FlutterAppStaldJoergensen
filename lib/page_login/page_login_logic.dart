import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import '../main.dart';

//COLORS
Color cGreen = const Color.fromARGB(0xFF, 0x5E, 0xA7, 0x4F);
Color cCream = const Color.fromARGB(0xFF, 0xF8, 0xF2, 0xD9);
Color cBrown = const Color.fromARGB(0xFF, 0x5D, 0x3C, 0x14);

class PageLoginLogic extends StatefulWidget {
  @override
  _PageLoginState createState() => new _PageLoginState();
}

class _PageLoginState extends State<PageLoginLogic> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        actions: <Widget>[],
        backgroundColor: cGreen,
      ),
      body: Form(
          key: _formKey,
          child: new ListView(
            children: <Widget>[
              Image.asset('assets/logo.png'),
              TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'Skriv din Email';
                  }
                },
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (input) => _email = input,
              ),
              TextFormField(
                validator: (input) {
                  if (input.length < 6) {
                    return 'Kodeordet skal være længere end 6 tegn';
                  }
                },
                decoration: InputDecoration(labelText: 'Password'),
                onSaved: (input) => _password = input,
                obscureText: true,
              ),
              RaisedButton(
                onPressed: signIn,
                child: Text('Login',
              style: TextStyle(
                color: cBrown,
                fontSize: 20,
              ),
            ),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.20)),
            elevation: 2.0,
            splashColor: cGreen,
              ),
            ],
          )),
    );
  }

  void signIn() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();
      try {
        FirebaseUser user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PageHome(user: user)));
      } catch (e) {
        print(e.message);
      }
    }
  }
}
