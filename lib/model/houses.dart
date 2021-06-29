import 'package:rental/model/feature.dart';
import 'package:rental/model/location.dart';
import 'package:rental/model/tag.dart';

import 'model.dart';

class Spaces extends Model {
  static final table = 'spaces';

  int id;
  String ownerId;
  String address;
  int price;
  String coverImgUrl;
  String imgUrl;
  String size;
  String type;
  String description;
  String availableFrom;
  bool pets, furnished;
  Location location;
  List<Tag> tags;
  List<Feature> facilities;

  Spaces(
      {this.id,
      this.ownerId,
      this.address,
      this.location,
      this.tags,
      this.price,
      this.coverImgUrl,
      this.imgUrl,
      this.size,
      this.type,
      this.availableFrom,
      this.description,
      this.pets,
      this.facilities});

  Map<String, dynamic> toMap() {
    Map<String, dynamic> data = {
      'id': id,
      'ownerId': ownerId,
      'location': location,
      'tags': tags,
      'amount': price,
      'coverImgUrl': coverImgUrl,
      'imgUrl': imgUrl,
      'size': size,
      'type': type,
      'available_from': availableFrom,
      'description': description,
      'pets': pets,
      'facilties': facilities
    };
    if (id = null) {
      data['id'] = id;
    }
    return data;
  }

  static Spaces fromMap(Map<String, dynamic> mapData) {
    return Spaces(
        id: mapData['id'],
        ownerId: mapData['ownerId'],
        address: mapData['address'],
        location: mapData['location'],
        tags: mapData['tags'],
        price: mapData['amount'],
        coverImgUrl: mapData['coverImgUrl'],
        imgUrl: mapData['imgUrl'],
        size: mapData['size'],
        type: mapData['type'],
        availableFrom: mapData['available_from'],
        description: mapData['description'],
        pets: mapData['pets'],
        facilities: mapData['facilities']);
  }
}
