import 'package:flutter/material.dart';
import 'package:gardenio_tubes/pages/first_screen.dart';
import 'package:gardenio_tubes/constants.dart';
import 'package:gardenio_tubes/pages/home_page.dart';
import 'package:gardenio_tubes/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(height: size.height * 0.15),
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
    "assets/icons/plant.svg",
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
        "Login Into Gardenio",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontFamily: 'Poppins',
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 12.0),
      ),
      Text(
        "Here is the time to take care your plant",
        style: TextStyle(
            fontSize: 12.0, color: Colors.black, fontFamily: 'Poppins'),
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
        style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
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
        style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        obscureText: true,
        autofocus: false,
      ),
    ],
  );
}

Widget _buildButton(BuildContext context) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 16.0),
      ),
      FlatButton(
        child: Text(
          'Login',
          style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        },
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
          style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => RegisterPage()),
          );
        },
      ),
    ],
  );
}
