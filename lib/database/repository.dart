// import 'package:gardenio_tubes/database/plants_database.dart';
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:sqflite/sqflite.dart';

// class Repository {
//   PlantsDatabase _plantsDatabase = PlantsDatabase();
//   static Database _database;

//   //init database
//   Future<Database> get database async {
//     if (_database != null) return _database;
//     _database = await _plantsDatabase.setDatabase();
//     return _database;
//   }

//   //insert something to database
//   Future<int?> insertData(String table, Map<String, dynamic> data) async {
//     Database db = await database;
//     try {
//       return await db.insert(table, data);
//     } catch (e) {
//       return null;
//     }
//   }

//   //get all data from database
//   Future<List<Map<String, dynamic>>?> getAllData(table) async {
//     Database db = await database;
//     try {
//       return db.query(table);
//     } catch (e) {
//       return null;
//     }
//   }

//   //delete data
//   Future<int?> deleteData(String table, int id) async {
//     Database db = await database;
//     try {
//       return await db.delete(table, where: "id = ?", whereArgs: [id]);
//     } catch (e) {
//       return null;
//     }
//   }
// }