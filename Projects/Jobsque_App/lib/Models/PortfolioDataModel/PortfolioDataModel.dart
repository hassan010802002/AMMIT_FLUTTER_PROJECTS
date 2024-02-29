/// status : true
/// data : {"name":"test12345","cv_file":"_cv1708035247","image":"https://project2.amit-learning.com/image/1708035247note.png","user_id":481,"updated_at":"2024-02-15T22:14:07.000000Z","created_at":"2024-02-15T22:14:07.000000Z","id":554}

class PortfolioDataModel {
  PortfolioDataModel({
      bool? status, 
      Data? data,}){
    _status = status;
    _data = data;
}

  PortfolioDataModel.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  bool? _status;
  Data? _data;

  bool? get status => _status;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// name : "test12345"
/// cv_file : "_cv1708035247"
/// image : "https://project2.amit-learning.com/image/1708035247note.png"
/// user_id : 481
/// updated_at : "2024-02-15T22:14:07.000000Z"
/// created_at : "2024-02-15T22:14:07.000000Z"
/// id : 554

class Data {
  Data({
      String? name, 
      String? cvFile, 
      String? image, 
      num? userId, 
      String? updatedAt, 
      String? createdAt, 
      num? id,}){
    _name = name;
    _cvFile = cvFile;
    _image = image;
    _userId = userId;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
}

  Data.fromJson(dynamic json) {
    _name = json['name'];
    _cvFile = json['cv_file'];
    _image = json['image'];
    _userId = json['user_id'];
    _updatedAt = json['updated_at'];
    _createdAt = json['created_at'];
    _id = json['id'];
  }
  String? _name;
  String? _cvFile;
  String? _image;
  num? _userId;
  String? _updatedAt;
  String? _createdAt;
  num? _id;

  String? get name => _name;
  String? get cvFile => _cvFile;
  String? get image => _image;
  num? get userId => _userId;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['cv_file'] = _cvFile;
    map['image'] = _image;
    map['user_id'] = _userId;
    map['updated_at'] = _updatedAt;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    return map;
  }

}