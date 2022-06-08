import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:gardenio_tubes/models/plants.dart';
import 'package:gardenio_tubes/pages/myplants/plants_card.dart';

class PlantsList extends StatelessWidget {
  final List<Plants> listOfPlants;
  final Function setData;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  PlantsList(
      this.listOfPlants, this.setData, this.flutterLocalNotificationsPlugin);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => PlantsCard(
          listOfPlants[index], setData, flutterLocalNotificationsPlugin),
      itemCount: listOfPlants.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
