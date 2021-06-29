import 'package:rental/model/houses.dart';


import 'db.dart';

class SpaceDAO {
  var _db = AppDatabase.init();
  bool isSaved = false;

  Future<bool> addSpace(Spaces space) async {
    await _db;
    if (space != null) {
      int inserted = await AppDatabase.insert(Spaces.table, space);
      isSaved = inserted == 1 ? true : false;
    }

    return isSaved;
  }

  Future<bool> updateSpace(Spaces model) async {
    await _db;
    if (model != null) {
      int inserted = await AppDatabase.update(Spaces.table, model);
      isSaved = inserted == 1 ? true : false;
    }
    return isSaved;
  }

  Future<List<Spaces>> getSpaces() async {
    await _db;
    List<Map<String, dynamic>> spaces = await AppDatabase.query(Spaces.table);
    return spaces.map((space) => Spaces.fromMap(space)).toList();
  }

  Future<bool> deleteSpace(Spaces model) async {
    await _db;
    if (model != null) {
      int inserted = await AppDatabase.delete(Spaces.table, model);
      isSaved = inserted == 1 ? true : false;
    }
    return isSaved;
  }
}
