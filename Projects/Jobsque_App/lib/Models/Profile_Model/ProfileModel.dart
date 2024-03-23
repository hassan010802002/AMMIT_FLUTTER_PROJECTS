/// data : {"id":482,"name":"ahmed2023","email":"ahmed2023@gmail.com","created_at":"2023-12-06T00:16:10.000000Z","updated_at":"2023-12-06T00:16:10.000000Z"}
/// status : true
// ignore_for_file: file_names, duplicate_ignore

library;

class ProfileModel {
  ProfileModel({
    Data? data,
    bool? status,
  }) {
    _data = data;
    _status = status;
  }

  ProfileModel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _status = json['status'];
  }

  Data? _data;
  bool? _status;

  Data? get data => _data;

  bool? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['status'] = _status;
    return map;
  }
}

/// id : 482
/// name : "ahmed2023"
/// email : "ahmed2023@gmail.com"
/// created_at : "2023-12-06T00:16:10.000000Z"
/// updated_at : "2023-12-06T00:16:10.000000Z"

class Data {
  Data({
    num? id,
    String? name,
    String? email,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _name = name;
    _email = email;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  num? _id;
  String? _name;
  String? _email;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;

  String? get name => _name;

  String? get email => _email;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
