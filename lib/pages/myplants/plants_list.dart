import 'package:flutter/material.dart';
import 'package:gardenio_tubes/models/plants.dart';
import 'package:gardenio_tubes/pages/myplants/plants_card.dart';

class PlantsList extends StatelessWidget {
  late final List<Plants> listOfPlants;
  late final Function setData;
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => PlantsCard(
          listOfPlants[index], setData),
      itemCount: listOfPlants.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
