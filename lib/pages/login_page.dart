import 'package:flutter/material.dart';
import 'package:gardenio_tubes/pages/first_screen.dart';
import 'package:gardenio_tubes/constants.dart';
import 'package:gardenio_tubes/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  _iconLogin(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _iconLogin() {
  return Image.asset(
    "assets/images/logo.png",
    height: 150.0,
    width: 150.0,
  );
}

Widget _titleDescription() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        "Login Into App",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      Text(
        "Lorem Ipsum sim amet , lorem ipsum amet",
        style: TextStyle(
          fontSize: 12.0,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
}

Widget _textField() {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Username",
          hintStyle: TextStyle(color: hintColor),
        ),
        style: TextStyle(color: Colors.white),
        autofocus: false,
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      TextFormField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Password",
          hintStyle: TextStyle(color: hintColor),
        ),
        style: TextStyle(color: Colors.white),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

Widget _buildButton(BuildContext) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      InkWell(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          child: Text(
            'Login',
            style: TextStyle(color: primaryColor),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      Text(
        'or',
        style: TextStyle(
          color: Colors.white,
          fontSize: 12.0,
        ),
      ),
      FlatButton(
        child: Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Navigator.pushNamed(BuildContext, RegisterPage.routeName);
        },
      ),
    ],
  );
}
