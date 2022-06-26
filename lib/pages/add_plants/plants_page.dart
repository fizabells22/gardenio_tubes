import 'dart:convert';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:gardenio_tubes/pages/add_plants/entry_form.dart';

class Plant {
  int id;
  String namePlant;
  String weeks;
  // String formatDate(DateTime datePlant) => new DateFormat("yyyy-MM-dd").format(datePlant);
  // TimeOfDayFormat timePlant;

  Plant({
    required this.id,
    required this.namePlant,
    required this.weeks,
    // required this.datePlant,
    // required this.timePlant
  });

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(id: json['id'], namePlant: json['name'], weeks: json['weeks']);
    // datePlant: ['datePlant'.toString()],
    // timePlant: ['timePlant'.toString()]);
  }
}

class PlantsPage extends StatefulWidget {
  @override
  State<PlantsPage> createState() => _PlantsPageState();
}

class _PlantsPageState extends State<PlantsPage> {
  late Future<List<Plant>> futurePlant;

  Future<List<Plant>> fetchPlant() async {
    http.Response response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/plant'));

    List plant = jsonDecode(response.body);

    return plant.map((plant) => Plant.fromJson(plant)).toList();
  }

  @override
  void initState() {
    super.initState();
    futurePlant = fetchPlant();
  }

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
        child: FutureBuilder<List<Plant>>(
            future: futurePlant,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    Plant plant = snapshot.data![index];
                    return ListTile(
                      title: Text(plant.namePlant),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Text('Something went wrong');
              }
              return CircularProgressIndicator();
            }),
        // children: <Widget>[
        //   SafeArea(
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(horizontal: 20),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: <Widget>[
        //           Align(
        //             alignment: Alignment.bottomRight,
        //             child: Container(
        //               alignment: Alignment.center,
        //               height: 52,
        //               width: 52,
        //               decoration: BoxDecoration(
        //                 color: Colors.green.shade600,
        //                 shape: BoxShape.circle,
        //               ),
        //               child: GestureDetector(
        //                   child: Icon(
        //                     Icons.add,
        //                     color: Colors.white,
        //                     size: 24.0,
        //                   ),
        //                   onTap: () {
        //                     Navigator.push(
        //                       context,
        //                       MaterialPageRoute(builder: (context) {
        //                         return EntryForm();
        //                       }),
        //                     );
        //                   }),
        //             ),
        //           ),
        //           //   children : [
        //           //     Expanded(child: createListView(),),
        //           //     Container(
        //           //     alignment: Alignment.bottomCenter,
        //           //     child: SizedBox(
        //           //           width: double.infinity,
        //           //           child: RaisedButton(
        //           //           child: Text("Add Plant", style: TextStyle(
        //           //         color: Colors.white, fontFamily: 'Poppins'),
        //           //   ),),
        //           //           onPressed: () async {
        //           //         },
        //           //     ),
        //           //   ),
        //           //   ),
        //           // ]),
        //         ],
      ),
    );
  }
  // );
  //   ),
  // ]));
}
