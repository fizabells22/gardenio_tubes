import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:gardenio_tubes/pages/add_plants/entry_form.dart';

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
        backgroundColor: Colors.green.shade600,
        leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 24.0,
            ),
            onTap: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Colors.green.shade600,
                      shape: BoxShape.circle,
                    ),
                    child: GestureDetector(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 24.0,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return EntryForm();
                            }),
                          );
                        }),
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
        ),
      ),
    );
  }
}
