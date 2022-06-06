import 'package:flutter/material.dart';
import 'package:gardenio_tubes/pages/login_page.dart';
import 'package:gardenio_tubes/pages/register_page.dart';

class FirstScreen extends StatefulWidget {
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/homepage.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Welcome to Gardenio!",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Here is the time to take care your plant!",
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 18,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(
              width: 16,
              height: 16,
            ),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    child: Text("Sign In".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(15)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(color: Colors.grey)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return LoginPage();
                        }),
                      );
                    }),
              ),
              SizedBox(width: 10, height: 10),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    child: Text("Sign Up".toUpperCase(),
                        style: TextStyle(fontSize: 14)),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(15)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.grey),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(color: Colors.grey)))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return RegisterPage();
                        }),
                      );
                    }),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
