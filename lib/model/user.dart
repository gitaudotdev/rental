class UserModel {
  String uid;
  String email;
  String photoUrl;
  String name;
  String phone;
  String code;
  bool isCodeValid;
  bool isTenant;

  UserModel(
      {this.uid,
      this.email,
      this.photoUrl,
      this.name,
      this.phone,
      this.code,
      this.isCodeValid,this.isTenant});

  Map toMap(UserModel user) {
    var data = Map<String, dynamic>();
    data['uid'] = user.uid;
    data['email'] = user.email;
    data['photoUrl'] = user.photoUrl;
    data['displayName'] = user.name;
    data['phone'] = user.phone;
    data['code'] = user.code;
    data['isCodeValid'] = user.isCodeValid;
    data['isTenant'] = user.isTenant;
    return data;
  }

  UserModel.fromMap(Map<String, dynamic> mapData) {
    this.uid = mapData['uid'];
    this.email = mapData['email'];
    this.photoUrl = mapData['photourl'];
    this.name = mapData['displayName'];
    this.phone = mapData['phone'];
    this.code = mapData['code'];
    this.isCodeValid = mapData['isCodeValid'];
    this.isTenant = mapData['isTenant'];
  }
}
