// import 'package:animated_text_kit/animated_text_kit.dart';

// import 'package:animated_widgets/animated_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:gardenio_tubes/models/calendar_model.dart';
// import 'package:gardenio_tubes/models/plants.dart';
// import 'package:gardenio_tubes/pages/myplants/calender.dart';
// import 'package:gardenio_tubes/pages/myplants/plants_list.dart';
// import '../../notifications/notifications.dart';
// import '../../database/dbhelper.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   //-------------------| Flutter notifications |-------------------
//   final Notifications _notifications = Notifications();
//   late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
//   //===============================================================

//   //--------------------| List of Plants from database |----------------------
//   List<Plants> allListOfPlants = <Plants>[];
//   final DbHelper _dbHelper = DbHelper();
//   List<Plants> dailyPlants = <Plants>[];
//   //=========================================================================

//   //-----------------| Calendar days |------------------
//   // final CalendarDayModel _days = CalendarDayModel();
//   late List<CalendarDayModel> _daysList;
//   //====================================================

//   //handle last choose day index in calendar
//   int _lastChooseDay = 0;

//   @override
//   // void initState() {
//   //   super.initState();
//   //   initNotifies();
//   //   setData();
//   //   _daysList = _days.getCurrentDays();
//   // }

//   //init notifications
//   Future initNotifies() async => flutterLocalNotificationsPlugin =
//       await _notifications.initNotifies(context);

//   //--------------------GET ALL DATA FROM DATABASE---------------------
//   Future setData() async {
//     allListOfPlants.clear();
//     (await _dbHelper.getAllData("Plants"))?.forEach((plantMap) {
//       // allListOfPlants.add(Plants(howManyWeeks: null, name: '', id: null, notifyId: null, plantsForm: '', time: null).plantMapToObject(plantMap));
//     });
//     chooseDay(_daysList[_lastChooseDay]);
//   }
//   //===================================================================

//   @override
//   Widget build(BuildContext context) {
//     final double deviceHeight =
//         MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

//     final Widget addButton = FloatingActionButton(
//       elevation: 2.0,
//       onPressed: () async {
//         //refresh the pills from database
//         await Navigator.pushNamed(context, "/add_new_plant")
//             .then((_) => setData());
//       },
//       child: Icon(
//         Icons.add,
//         color: Colors.white,
//         size: 24.0,
//       ),
//       backgroundColor: Theme.of(context).primaryColor,
//     );

//     return Scaffold(
//       floatingActionButton: addButton,
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       backgroundColor: Color.fromRGBO(248, 248, 248, 1),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.only(
//                 top: 0.0, left: 25.0, right: 25.0, bottom: 20.0),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: deviceHeight * 0.04,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 5.0),
//                   child: Container(
//                     alignment: Alignment.topCenter,
//                     height: deviceHeight * 0.1,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Plants",
//                           style: Theme.of(context)
//                               .textTheme
//                               .headline1
//                               ?.copyWith(color: Colors.black),
//                         ),
//                         ShakeAnimatedWidget(
//                           enabled: true,
//                           duration: Duration(milliseconds: 2000),
//                           curve: Curves.linear,
//                           shakeAngle: Rotation.deg(z: 30),
//                           child: Icon(
//                             Icons.notifications_none,
//                             size: 42.0,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: deviceHeight * 0.01,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 5.0),
//                   child: Calendar(chooseDay, _daysList),
//                 ),
//                 SizedBox(height: deviceHeight * 0.03),
//                 dailyPlants.isEmpty
//                     ? SizedBox(
//                         width: double.infinity,
//                         height: 100,
//                         child: WavyAnimatedTextKit(
//                           textStyle: TextStyle(
//                               fontSize: 32.0,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black),
//                           text: ["Loading..."],
//                           isRepeatingAnimation: true,
//                           speed: Duration(milliseconds: 150),
//                         ),
//                       )
//                     : PlantsList(
//                         dailyPlants, setData, flutterLocalNotificationsPlugin)
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   //-------------------------| Click on the calendar day |-------------------------
//   void chooseDay(CalendarDayModel clickedDay) {
//     setState(() {
//       _lastChooseDay = _daysList.indexOf(clickedDay);
//       _daysList.forEach((day) => day.isChecked = false);
//       CalendarDayModel chooseDay = _daysList[_daysList.indexOf(clickedDay)];
//       chooseDay.isChecked = true;
//       dailyPlants.clear();
//       allListOfPlants.forEach((plant) {
//         DateTime plantDate =
//             DateTime.fromMicrosecondsSinceEpoch(plant.time * 1000);
//         if (chooseDay.dayNumber == plantDate.day &&
//             chooseDay.month == plantDate.month &&
//             chooseDay.year == plantDate.year) {
//           dailyPlants.add(plant);
//         }
//       });
//       dailyPlants.sort((plant1, plant2) => plant1.time.compareTo(plant2.time));
//     });
//   }
// }
