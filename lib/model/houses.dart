import 'package:rental/model/tag.dart';

class Apartment {
  String ownerId;
  String address;
  String location;
  int amount;
  String imgUrl;
  String size;
  String type;
  String status;
  String description;
  String pets;
  String facilities;
  List<Tag> tags;

  Apartment(
      {this.ownerId,
      this.address,
      this.location,
      this.tags,
      this.amount,
      this.imgUrl,
      this.size,
      this.type,
      this.status,
      this.description,
      this.pets,
      this.facilities});

  Map toMap(Apartment apartment) {
    var data = Map<String, dynamic>();
    data['ownerId'] = apartment.ownerId;
    data['address'] = apartment.address;
    data['location'] = apartment.location;
    data['tags'] = apartment.tags;
    data['amount'] = apartment.amount;
    data['imgUrl'] = apartment.imgUrl;
    data['size'] = apartment.size;
    data['type'] = apartment.type;
    data['status'] = apartment.size;
    data['description'] = apartment.description;
    data['pets'] = apartment.pets;
    data['facilties'] = apartment.facilities;
    return data;
  }

  Apartment.fromMap(Map<String, dynamic> mapData) {
    this.ownerId = mapData['ownerId'];
    this.address = mapData['address'];
    this.location = mapData['location'];
    this.tags = mapData['tags'];
    this.amount = mapData['amount'];
    this.imgUrl = mapData['imgUrl'];
    this.size = mapData['size'];
    this.type = mapData['type'];
    this.status = mapData['status'];
    this.description = mapData['description'];
    this.pets = mapData['pets'];
    this.facilities = mapData['facilities'];
  }
}
