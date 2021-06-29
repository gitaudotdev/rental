class Location {
  int id;
  String address;
  double latitude;
  double longitude;


  Location(
      {this.id,
      this.address,
      this.latitude,
      this.longitude});

  Location.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}