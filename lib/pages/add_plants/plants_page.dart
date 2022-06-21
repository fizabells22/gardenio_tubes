import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class PlantsPage extends StatefulWidget {
  @override
  State<PlantsPage> createState() => _PlantsPageState();
}

class _PlantsPageState extends State<PlantsPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Plants",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 21,
              fontFamily: 'Poppins'),
        ),
        elevation: 10,
        backgroundColor: Colors.grey[500],
        leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
            ),
            onTap: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Colors.grey[500],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add),
                    ),
                  ),
                  //   children : [
                  //     Expanded(child: createListView(),),
                  //     Container(
                  //     alignment: Alignment.bottomCenter,
                  //     child: SizedBox(
                  //           width: double.infinity,
                  //           child: RaisedButton(
                  //           child: Text("Add Plant", style: TextStyle(
                  //         color: Colors.white, fontFamily: 'Poppins'),
                  //   ),),
                  //           onPressed: () async {
                  //         },
                  //     ),
                  //   ),
                  //   ),
                  // ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
