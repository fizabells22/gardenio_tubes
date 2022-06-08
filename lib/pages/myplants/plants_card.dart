import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:gardenio_tubes/notifications/notifications.dart';
import 'package:intl/intl.dart';
import 'package:gardenio_tubes/database/repository.dart';
import 'package:gardenio_tubes/models/plants.dart';

class PlantsCard extends StatelessWidget {
  final Plants plant;
  final Function setData;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  PlantsCard(this.plant, this.setData, this.flutterLocalNotificationsPlugin);

  @override
  Widget build(BuildContext context) {
    //check if the medicine time is lower than actual
    final bool isEnd = DateTime.now().millisecondsSinceEpoch > plant.time;

    return Card(
        elevation: 0.0,
        margin: EdgeInsets.symmetric(vertical: 7.0),
        color: Colors.white,
        child: ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            onLongPress: () => _showDeleteDialog(
                context, plant.name, plant.id, plant.notifyId),
            contentPadding:
                EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            title: Text(
              plant.name,
              style: Theme.of(context).textTheme.headline1?.copyWith(
                  color: Colors.black,
                  fontSize: 20.0,
                  decoration: isEnd ? TextDecoration.lineThrough : null),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              "${plant.plantsForm}",
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Colors.grey[600],
                  fontSize: 15.0,
                  decoration: isEnd ? TextDecoration.lineThrough : null),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  DateFormat("HH:mm")
                      .format(DateTime.fromMillisecondsSinceEpoch(plant.time)),
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      decoration: isEnd ? TextDecoration.lineThrough : null),
                ),
              ],
            ),
            leading: Container(
              width: 60.0,
              height: 60.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        isEnd ? Colors.white : Colors.transparent,
                        BlendMode.saturation),
                    child: Image.asset(plant.image)),
              ),
            )));
  }

  //--------------------------| SHOW THE DELETE DIALOG ON THE SCREEN |-----------------------

  void _showDeleteDialog(
      BuildContext context, String plantName, int plantId, int notifyId) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Delete ?"),
              content: Text("Are you sure to delete $plantName plant?"),
              contentTextStyle:
                  TextStyle(fontSize: 17.0, color: Colors.grey[800]),
              actions: [
                FlatButton(
                  splashColor: Theme.of(context).primaryColor.withOpacity(0.3),
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                FlatButton(
                  splashColor: Theme.of(context).primaryColor.withOpacity(0.3),
                  child: Text("Delete",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                  onPressed: () async {
                    await Repository().deleteData('Plants', plantId);
                    await Notifications().removeNotify(
                        notifyId, flutterLocalNotificationsPlugin);
                    setData();
                    Navigator.pop(context);
                  },
                ),
              ],
            ));
  }
}
