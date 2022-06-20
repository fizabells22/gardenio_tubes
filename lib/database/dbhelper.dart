import 'package:path/path.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:gardenio_tubes/models/plants.dart';

class DbHelper {
  static DbHelper _dbHelper;
  static Database _database;
  DbHelper._createObject();

  Future<Database> database() async {
    //untuk menentukan nama database dan lokasi yg dibuat
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'Plants.db';

    //create, read databases
    var itemDatabase = openDatabase(path, version: 6, onCreate: setDatabase);
    //mengembalikan nilai object sebagai hasil dari fungsinya
    return itemDatabase;
  }

  void setDatabase(Database db, int version) async {
    // String databasePath = await getDatabasesPath();
    // String path = join(databasePath, "plants_db");
    // Database database = await openDatabase(path, version: 1,
    //     onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE Plants item (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, howManyWeeks INTEGER, plantsForm TEXT, time INTEGER, notifyId INTEGER)");
    }
    // );
    // return database;

//select databases
  Future<List<Map<String, dynamic>>> select() async {
    Database db = await database;
    var mapList = await db.query('Plants', orderBy: 'name');
    return mapList;
  }

  //init database
  Future<Database> get database async {
    if (_database == null){
    _database = await database;
    }
    return _database;
  }

  //insert something to database
  Future<int?> insertData(String table, Map<String, dynamic> data) async {
    Database db = await database;
    try {
      return await db.insert(table, data);
    } catch (e) {
      return null;
    }
  }

  //get all data from database
  Future<List<Map<String, dynamic>>?> getAllData(table) async {
    Database db = await database;
    try {
      return db.query(table);
    } catch (e) {
      return null;
    }
  }

  //delete data
  Future<int?> deleteData(String table, int id) async {
    Database db = await database;
    try {
      return await db.delete(table, where: "id = ?", whereArgs: [id]);
    } catch (e) {
      return null;
    }
  }

  //create databases
  Future<int> insert(Plants object) async {
    Database db = await database;
    int count = await db.insert('Plants', object.plantToMap());
    return count;
  }

//update databases
  Future<int> update(Plants object) async {
    Database db = await database;
    int count = await db.update('Plants', object.plantToMap(),
        where: 'id=?', whereArgs: [object.id]);
    return count;
  }

 Future<List<Plants>> getPlantsList() async {
    var PlantsMapList = await select();
    int count = PlantsMapList.length;
    List<Plants> PlantsList = <Plants>[];
    for (int i = 0; i < count; i++) {
      PlantsList.add(Plants plantMapToObject(PlantsMapList[i]));
    }
    return PlantsList;
  }

  factory DbHelper() {
    if (_dbHelper == null) {
      _dbHelper = DbHelper._createObject();
    }
    return _dbHelper;
  }
}
