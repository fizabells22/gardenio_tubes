import 'package:flutter/material.dart';
import 'package:gardenio_tubes/models/jenis_plants.dart';

class PlantTypeCard extends StatelessWidget {
  late final JenisPlants plantType;
  late final Function handler;
  PlantTypeCard(this.plantType, this.handler);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => handler(plantType),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: plantType.isChoose ? Colors.blue : Colors.white,
            ),
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                Container(width: 50, height: 50.0, child: plantType.image),
                SizedBox(
                  height: 7.0,
                ),
                Container(
                    child: Text(
                  plantType.name,
                  style: TextStyle(
                      color: plantType.isChoose ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500),
                )),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 15.0,
        )
      ],
    );
  }
}
