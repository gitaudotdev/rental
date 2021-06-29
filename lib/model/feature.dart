class Feature {
  String feature;
  int space;

  Feature({
    this.feature,
    this.space,
  });

  Feature.fromJson(Map<String, dynamic> json) {
    feature = json['feature'];
    space = json['space'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['feature'] = this.feature;
    data['space'] = this.space;
    return data;
  }
}
