import 'package:sqflite/sqflite.dart' as db;

class DatabaseService {
  static late db.Database database;

  static init(String path) async {
    db.Sqflite();
    database = await db.openDatabase(path);
  }
}
