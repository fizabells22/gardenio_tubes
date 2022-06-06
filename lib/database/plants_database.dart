import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class PlantsDatabase {
  setDatabase() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "plants_db");
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE Plants (id INTEGER PRIMARY KEY, name TEXT, howManyWeeks INTEGER, plantsForm TEXT, time INTEGER, notifyId INTEGER)");
    });
    return database;
  }
}
