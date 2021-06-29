import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
//TODO: switch to sharedpreferences

  static final String loginStatus = 'loginStatus';
  static final String kUser = 'user';

  //get logged in status
  static bool getLoggedInStatus(FlutterSecureStorage storage) {
    return storage.containsKey(key: loginStatus) != null
        ? storage.read(key: loginStatus)
        : false;
  }

  static Future<bool> setloginstatus(
      String value, FlutterSecureStorage storage) {
    return storage.write(key: loginStatus, value: value);
  }

  // static String getUser(FlutterSecureStorage storage){
  //   return storage.read(key: kUser)
  // }
}
