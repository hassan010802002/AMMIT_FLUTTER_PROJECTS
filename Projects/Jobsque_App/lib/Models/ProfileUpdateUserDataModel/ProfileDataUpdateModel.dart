/// status : true
/// data : {"id":481,"name":"hassan","otp":"2853","tow_step":null,"email":"test12345@gmail.com","email_verified_at":null,"created_at":"2023-12-06T00:04:30.000000Z","updated_at":"2024-02-15T22:16:29.000000Z"}

class ProfileUpdateUserDataModel {
  ProfileUpdateUserDataModel({
      bool? status, 
      Data? data,}){
    _status = status;
    _data = data;
}

  ProfileUpdateUserDataModel.fromJson(dynamic json) {
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

/// id : 481
/// name : "hassan"
/// otp : "2853"
/// tow_step : null
/// email : "test12345@gmail.com"
/// email_verified_at : null
/// created_at : "2023-12-06T00:04:30.000000Z"
/// updated_at : "2024-02-15T22:16:29.000000Z"

class Data {
  Data({
      num? id, 
      String? name, 
      String? otp, 
      dynamic towStep, 
      String? email, 
      dynamic emailVerifiedAt, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _name = name;
    _otp = otp;
    _towStep = towStep;
    _email = email;
    _emailVerifiedAt = emailVerifiedAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _otp = json['otp'];
    _towStep = json['tow_step'];
    _email = json['email'];
    _emailVerifiedAt = json['email_verified_at'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _name;
  String? _otp;
  dynamic _towStep;
  String? _email;
  dynamic _emailVerifiedAt;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get name => _name;
  String? get otp => _otp;
  dynamic get towStep => _towStep;
  String? get email => _email;
  dynamic get emailVerifiedAt => _emailVerifiedAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['otp'] = _otp;
    map['tow_step'] = _towStep;
    map['email'] = _email;
    map['email_verified_at'] = _emailVerifiedAt;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}