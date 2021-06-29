import 'model.dart';

class User extends Model {
  static final table = 'user';

  int id;
  String username;
  String email;
  bool tenant;
  String token;
  String profileImg;

  User(
      {this.id,
      this.username,
      this.email,
      this.token,
      this.tenant,
      this.profileImg});

  static User fromMap(Map<String, dynamic> json) {
   return User(
        id: json['id'],
        username: json['username'],
        email: json['email'],
        tenant: json['tenant'],
        token: json['token'],
        profileImg: json['profile_img']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {
      'id': id,
      'username': username,
      'email': email,
      'tenant': tenant,
      'token': token,
      'profile_img': profileImg
    };
    if (id != null) {
      data['id'] = id;
    }
    return data;
  }
}
