import 'package:rental/model/location.dart';

import 'feature.dart';

class space {
  int id;
  String title;
  String description;
  int rooms;
  int price;
  bool furnished;
  String availableFrom;
  String type;
  Owner owner;
  bool pets;
  Location location;
  CoverImage coverImage;
 // List<Images> images;
  List<Feature> features;
  List<Tags> tags;

  space(
      {this.id,
      this.title,
      this.description,
      this.rooms,
      this.price,
      this.furnished,
      this.availableFrom,
      this.type,
      this.owner,
      this.pets,
      this.location,
      this.coverImage,
      //this.images,
      this.features,
      this.tags});

  space.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    rooms = json['rooms'];
    price = json['price'];
    furnished = json['furnished'];
    availableFrom = json['available_from'];
    type = json['type'];
    owner = json['owner'] != null ? new Owner.fromJson(json['owner']) : null;
    pets = json['pets'];
    location = json['location'];
    coverImage = json['cover_image'] != null
        ? new CoverImage.fromJson(json['cover_image'])
        : null;
    // if (json['images'] != null) {
    //   images = new List<Images>();
    //   json['images'].forEach((v) {
    //     images.add(new Images.fromJson(v));
    //   });
    // }
    // if (json['features'] != null) {
    //   features = new List<Null>();
    //   json['features'].forEach((v) {
    //     features.add(new Null.fromJson(v));
    //   });
    // }
    if (json['tags'] != null) {
      tags = new List<Tags>();
      json['tags'].forEach((v) {
        tags.add(new Tags.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['rooms'] = this.rooms;
    data['price'] = this.price;
    data['furnished'] = this.furnished;
    data['available_from'] = this.availableFrom;
    data['type'] = this.type;
    if (this.owner != null) {
      data['owner'] = this.owner.toJson();
    }
    data['pets'] = this.pets;
    data['location'] = this.location;
    if (this.coverImage != null) {
      data['cover_image'] = this.coverImage.toJson();
    }
    // if (this.images != null) {
    //   data['images'] = this.images.map((v) => v.toJson()).toList();
    // }
    // if (this.features != null) {
    //   data['features'] = this.features.map((v) => v.toJson()).toList();
    // }
    if (this.tags != null) {
      data['tags'] = this.tags.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Owner {
  int id;
  String username;
  String email;
  String provider;
  bool confirmed;
  bool blocked;
  int role;
  bool tenant;
  String createdAt;
  String updatedAt;
  Null profileImg;

  Owner(
      {this.id,
      this.username,
      this.email,
      this.provider,
      this.confirmed,
      this.blocked,
      this.role,
      this.tenant,
      this.createdAt,
      this.updatedAt,
      this.profileImg});

  Owner.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    provider = json['provider'];
    confirmed = json['confirmed'];
    blocked = json['blocked'];
    role = json['role'];
    tenant = json['tenant'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    profileImg = json['profile_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['email'] = this.email;
    data['provider'] = this.provider;
    data['confirmed'] = this.confirmed;
    data['blocked'] = this.blocked;
    data['role'] = this.role;
    data['tenant'] = this.tenant;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['profile_img'] = this.profileImg;
    return data;
  }
}

class CoverImage {
  int id;
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  Formats formats;
  String hash;
  String ext;
  String mime;
  double size;
  String url;
  Null previewUrl;
  String provider;
  Null providerMetadata;
  String createdAt;
  String updatedAt;

  CoverImage(
      {this.id,
      this.name,
      this.alternativeText,
      this.caption,
      this.width,
      this.height,
      this.formats,
      this.hash,
      this.ext,
      this.mime,
      this.size,
      this.url,
      this.previewUrl,
      this.provider,
      this.providerMetadata,
      this.createdAt,
      this.updatedAt});

  CoverImage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    alternativeText = json['alternativeText'];
    caption = json['caption'];
    width = json['width'];
    height = json['height'];
    formats =
        json['formats'] != null ? new Formats.fromJson(json['formats']) : null;
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    size = json['size'];
    url = json['url'];
    previewUrl = json['previewUrl'];
    provider = json['provider'];
    providerMetadata = json['provider_metadata'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['alternativeText'] = this.alternativeText;
    data['caption'] = this.caption;
    data['width'] = this.width;
    data['height'] = this.height;
    if (this.formats != null) {
      data['formats'] = this.formats.toJson();
    }
    data['hash'] = this.hash;
    data['ext'] = this.ext;
    data['mime'] = this.mime;
    data['size'] = this.size;
    data['url'] = this.url;
    data['previewUrl'] = this.previewUrl;
    data['provider'] = this.provider;
    data['provider_metadata'] = this.providerMetadata;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Formats {
  Thumbnail thumbnail;

  Formats({this.thumbnail});

  Formats.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'] != null
        ? new Thumbnail.fromJson(json['thumbnail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail.toJson();
    }
    return data;
  }
}

class Thumbnail {
  String name;
  String hash;
  String ext;
  String mime;
  int width;
  int height;
  double size;
  Null path;
  String url;

  Thumbnail(
      {this.name,
      this.hash,
      this.ext,
      this.mime,
      this.width,
      this.height,
      this.size,
      this.path,
      this.url});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    path = json['path'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['hash'] = this.hash;
    data['ext'] = this.ext;
    data['mime'] = this.mime;
    data['width'] = this.width;
    data['height'] = this.height;
    data['size'] = this.size;
    data['path'] = this.path;
    data['url'] = this.url;
    return data;
  }
}

class Tags {
  int id;
  String tag;
  int space;
  String slug;
  String publishedAt;
  String createdAt;
  String updatedAt;

  Tags(
      {this.id,
      this.tag,
      this.space,
      this.slug,
      this.publishedAt,
      this.createdAt,
      this.updatedAt});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tag = json['tag'];
    space = json['space'];
    slug = json['slug'];
    publishedAt = json['published_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tag'] = this.tag;
    data['space'] = this.space;
    data['slug'] = this.slug;
    data['published_at'] = this.publishedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
