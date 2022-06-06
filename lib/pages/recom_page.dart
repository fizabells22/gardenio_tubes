import 'package:flutter/material.dart';
import 'package:gardenio_tubes/pages/complexplant.dart';
import 'package:gardenio_tubes/pages/simpleplant.dart';

class RecomPage extends StatefulWidget {
  @override
  State<RecomPage> createState() => _RecomPageState();
}

class _RecomPageState extends State<RecomPage> {
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
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
              ]),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              GestureDetector(
                onTap: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return listRibet();
                        }),
                      );
   },
               child:(
              Container(
                width: 120.0,
                height: 120.0,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: new Icon(
                  Icons.park,
                  size: 40.0,
                  color: Colors.grey,
                ),
              Text(
                "Tanaman Hias dengan Perawatan",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
               ) ),),
                GestureDetector(
                onTap: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return listSimple();
                        }),
                      );
   },
               child:(
              Container(
                width: 120.0,
                height: 120.0,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: new Icon(
                  Icons.home,
                  size: 40.0,
                  color: Colors.grey,
                ),
              Text(
                "Tanaman Hias Minim Perawatan",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
               )),),
           ]),
            ]),
          ),
        );
  }
}
