import 'package:flutter/material.dart';
import 'package:gardenio_tubes/pages/complexplant.dart';
import 'package:gardenio_tubes/pages/simpleplant.dart';
import 'package:gardenio_tubes/widgets/bottom_nav_bar.dart';

class RecomPage extends StatefulWidget {
  @override
  State<RecomPage> createState() => _RecomPageState();
}

class _RecomPageState extends State<RecomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/homepage.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(children: [
                  TextSpan(
                    text: "Select the perfect plants for your place",
                    style: TextStyle(
                      color: Color.fromARGB(255, 250, 250, 250),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ]),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return listRibet();
                      }),
                    );
                  },
                  child: (Container(
                    width: 170.0,
                    height: 170.0,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        new Icon(
                          Icons.park,
                          size: 40.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        Text(
                          "Tanaman Hias Dengan Perawatan",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return listSimple();
                      }),
                    );
                  },
                  child: (Container(
                    width: 170.0,
                    height: 170.0,
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 255, 255, 255)),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        new Icon(
                          Icons.park,
                          size: 40.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        Text(
                          "Tanaman Hias Minim Perawatan",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )),
                ),
              ]),
            ]),
      ),
    );
  }
}
