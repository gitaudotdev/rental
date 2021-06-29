
import 'package:rental/model/user.dart';

import 'db.dart';

class UserDAO {
  var _db = AppDatabase.init();
  bool isSaved = false;

  Future<bool> addUser(User model) async {
    await _db;
    if (model != null) {
      int inserted = await AppDatabase.insert(User.table, model);
      isSaved = inserted == 1 ? true : false;
    }

    return isSaved;
  }

  Future<bool> updateuser(User model) async {
    await _db;
    if (model != null) {
      int inserted = await AppDatabase.update(User.table, model);
      isSaved = inserted == 1 ? true : false;
    }
    return isSaved;
  }

  Future<List<User>> getUsers() async {
    await _db;
    List<Map<String, dynamic>> users = await AppDatabase.query(User.table);
    return users.map((user) => User.fromMap(user)).toList();
  }

  Future<bool> deleteUser(User model) async {
    await _db;
    if (model != null) {
      int inserted = await AppDatabase.delete(User.table, model);
      isSaved = inserted == 1 ? true : false;
    }
    return isSaved;
  }
}