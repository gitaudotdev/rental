class Tag {
  String name;
  String slug;
  int id;

  Tag({this.name, this.slug});

  Map toMap(Tag tag) {
    var data = Map<String, dynamic>();
    data['id'] = tag.id;
    data['name'] = tag.name;
    data['slug'] = tag.slug;
    return data;
  }

  Tag.fromMap(Map<String, dynamic> mapData) {
    this.id = mapData['id'];
    this.name = mapData['name'];
    this.slug = mapData['slug'];
  }
}
