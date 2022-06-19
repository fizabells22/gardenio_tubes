import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gardenio_tubes/constants.dart';
import 'package:gardenio_tubes/pages/login_page.dart';
import 'home_page.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = "/RegisterPage";
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FirebaseAuth _auth = FirebaseAuth.instance;
  User get user => _auth.currentUser!;
  late String _name, _email, _password;

  checkAuthentication() async {
    _auth.authStateChanges().listen((user) async {
      if (user != null) {
        Navigator.pushReplacementNamed(context, "/");
      }
    });
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentication();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Container(
        color: kPrimaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: size.height * 0.1),
                  Image.asset(
                    "assets/images/greenn.png",
                    height: 150.0,
                    width: 150.0,
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                      ),
                      Text(
                        "Register Into Gardenio",
                        style: TextStyle(
                            color: Colors.green.shade600,
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      Text(
                        "Here is the time to take care your plant",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black54,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      TextFormField(
                        validator: (input) {
                          if (input!.isEmpty) {
                            return 'Enter Username';
                          }
                          ;
                        },
                        onSaved: (input) => _name = input!,
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
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Poppins'),
                        autofocus: false,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      TextFormField(
                        validator: (input) {
                          if (input!.isEmpty) {
                            return 'Enter Email';
                          }
                          ;
                        },
                        onSaved: (input) => _email = input!,
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
                          hintText: "Email",
                          hintStyle: TextStyle(color: hintColor),
                        ),
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Poppins'),
                        autofocus: false,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      TextFormField(
                        validator: (input) {
                          if (input!.length < 6) {
                            return 'Your password needs to be at least 6 characters';
                          }
                          ;
                        },
                        onSaved: (input) => _password = input!,
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
                        style: TextStyle(
                            color: Colors.black, fontFamily: 'Poppins'),
                        obscureText: true,
                        autofocus: false,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 16.0, bottom: 16),
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green.shade600),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            onPressed: signUp),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Future<void> signUp() async {
    String required String password,
    BuildContext context,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await sendEmailVerification(context);
    } on FirebaseAuthException catch (e) {
      // if you want to display your own custom error message
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
      showSnackBar(
          context, e.message!); // Displaying the usual firebase error message
    }
  }
}
