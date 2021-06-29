import 'package:path/path.dart';
import 'package:rental/model/model.dart';
import 'package:sqflite/sqflite.dart';

class AppDatabase {
  static final _dbName = "Spaces.db";
  static final _dbVersion = 1;

  AppDatabase._();
  static final AppDatabase instance = AppDatabase._();

  static Database _database;

  // Future<Database> get database async {
  //   if (_database != null) return database;
  //   //lazily instantiate the db first time it is accessed
  //   _database = await _initDB();
  //   return _database;
  // }

  static Future<void> init() async {
    if (_database != null) return;
    try {
      //open database(also creates it if it doesnt exist)
      var databasePath = await getDatabasesPath();
      String path = join(databasePath, _dbName);
      _database =
          await openDatabase(path, version: _dbVersion, onCreate: onCreate);
    } catch (ex) {
      print(ex);
    }
  }

  static void onCreate(Database db, int version) async {
    await db.execute('''CREATE TABLE IF NOT EXISTS spaces (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
        title STRING,
        ownerId INTEGER,
        price INTEGER,
        rooms INTEGER,
        type STRING,
        description STRING,
        available_from DATE,
        
        )''');
    await db.execute('');
  }

  static Future<List<Map<String, dynamic>>> query(String table) async =>
      _database.query(table);

  static Future<int> insert(String table, Model model) async =>
      await _database.insert(table, model.toMap());

  static Future<int> update(String table, Model model) async => await _database
      .update(table, model.toMap(), where: 'id = ?', whereArgs: [model.id]);

  static Future<int> delete(String table, Model model) async =>
      await _database.delete(table, where: 'id = ?', whereArgs: [model.id]);

  static Future<Batch> batch() async => _database.batch();
}
