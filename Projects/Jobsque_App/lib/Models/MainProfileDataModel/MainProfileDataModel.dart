/// status : true
/// data : {"portofolio":[{"id":746,"cv_file":"https://project2.amit-learning.com/cv/cv_8i2ogtvser.jpg","name":"Tester","image":"https://project2.amit-learning.com/image/image_8i2ogtvser.png","user_id":1616,"created_at":"2024-03-15T21:03:55.000000Z","updated_at":"2024-03-15T21:03:55.000000Z"}],"profile":{"id":1613,"user_id":1616,"name":"Tester","email":"tester000@gmail.com","mobile":"01234567985","address":"Egypt","language":"en","interested_work":"data","offline_place":"data","remote_place":"data","bio":"Flutter Developer","education":"education","experience":"data","personal_detailed":"data","created_at":"2024-03-15T20:59:34.000000Z","updated_at":"2024-03-15T21:02:19.000000Z"}}
// ignore_for_file: file_names

library;

class MainProfileDataModel {
  MainProfileDataModel({
    bool? status,
    Data? data,
  }) {
    _status = status;
    _data = data;
  }

  MainProfileDataModel.fromJson(dynamic json) {
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

/// portofolio : [{"id":746,"cv_file":"https://project2.amit-learning.com/cv/cv_8i2ogtvser.jpg","name":"Tester","image":"https://project2.amit-learning.com/image/image_8i2ogtvser.png","user_id":1616,"created_at":"2024-03-15T21:03:55.000000Z","updated_at":"2024-03-15T21:03:55.000000Z"}]
/// profile : {"id":1613,"user_id":1616,"name":"Tester","email":"tester000@gmail.com","mobile":"01234567985","address":"Egypt","language":"en","interested_work":"data","offline_place":"data","remote_place":"data","bio":"Flutter Developer","education":"education","experience":"data","personal_detailed":"data","created_at":"2024-03-15T20:59:34.000000Z","updated_at":"2024-03-15T21:02:19.000000Z"}

class Data {
  Data({
    List<Portofolio>? portofolio,
    Profile? profile,
  }) {
    _portofolio = portofolio;
    _profile = profile;
  }

  Data.fromJson(dynamic json) {
    if (json['portofolio'] != null) {
      _portofolio = [];
      json['portofolio'].forEach((v) {
        _portofolio?.add(Portofolio.fromJson(v));
      });
    }
    _profile = json['profile'] != null ? Profile.fromJson(json['profile']) : null;
  }
  List<Portofolio>? _portofolio;
  Profile? _profile;

  List<Portofolio>? get portofolio => _portofolio;
  Profile? get profile => _profile;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_portofolio != null) {
      map['portofolio'] = _portofolio?.map((v) => v.toJson()).toList();
    }
    if (_profile != null) {
      map['profile'] = _profile?.toJson();
    }
    return map;
  }
}

/// id : 1613
/// user_id : 1616
/// name : "Tester"
/// email : "tester000@gmail.com"
/// mobile : "01234567985"
/// address : "Egypt"
/// language : "en"
/// interested_work : "data"
/// offline_place : "data"
/// remote_place : "data"
/// bio : "Flutter Developer"
/// education : "education"
/// experience : "data"
/// personal_detailed : "data"
/// created_at : "2024-03-15T20:59:34.000000Z"
/// updated_at : "2024-03-15T21:02:19.000000Z"

class Profile {
  Profile({
    num? id,
    num? userId,
    String? name,
    String? email,
    String? mobile,
    String? address,
    String? language,
    String? interestedWork,
    String? offlinePlace,
    String? remotePlace,
    String? bio,
    String? education,
    String? experience,
    String? personalDetailed,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _userId = userId;
    _name = name;
    _email = email;
    _mobile = mobile;
    _address = address;
    _language = language;
    _interestedWork = interestedWork;
    _offlinePlace = offlinePlace;
    _remotePlace = remotePlace;
    _bio = bio;
    _education = education;
    _experience = experience;
    _personalDetailed = personalDetailed;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Profile.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _name = json['name'];
    _email = json['email'];
    _mobile = json['mobile'];
    _address = json['address'];
    _language = json['language'];
    _interestedWork = json['interested_work'];
    _offlinePlace = json['offline_place'];
    _remotePlace = json['remote_place'];
    _bio = json['bio'];
    _education = json['education'];
    _experience = json['experience'];
    _personalDetailed = json['personal_detailed'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  num? _userId;
  String? _name;
  String? _email;
  String? _mobile;
  String? _address;
  String? _language;
  String? _interestedWork;
  String? _offlinePlace;
  String? _remotePlace;
  String? _bio;
  String? _education;
  String? _experience;
  String? _personalDetailed;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get userId => _userId;
  String? get name => _name;
  String? get email => _email;
  String? get mobile => _mobile;
  String? get address => _address;
  String? get language => _language;
  String? get interestedWork => _interestedWork;
  String? get offlinePlace => _offlinePlace;
  String? get remotePlace => _remotePlace;
  String? get bio => _bio;
  String? get education => _education;
  String? get experience => _experience;
  String? get personalDetailed => _personalDetailed;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['name'] = _name;
    map['email'] = _email;
    map['mobile'] = _mobile;
    map['address'] = _address;
    map['language'] = _language;
    map['interested_work'] = _interestedWork;
    map['offline_place'] = _offlinePlace;
    map['remote_place'] = _remotePlace;
    map['bio'] = _bio;
    map['education'] = _education;
    map['experience'] = _experience;
    map['personal_detailed'] = _personalDetailed;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}

/// id : 746
/// cv_file : "https://project2.amit-learning.com/cv/cv_8i2ogtvser.jpg"
/// name : "Tester"
/// image : "https://project2.amit-learning.com/image/image_8i2ogtvser.png"
/// user_id : 1616
/// created_at : "2024-03-15T21:03:55.000000Z"
/// updated_at : "2024-03-15T21:03:55.000000Z"

class Portofolio {
  Portofolio({
    num? id,
    String? cvFile,
    String? name,
    String? image,
    num? userId,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _cvFile = cvFile;
    _name = name;
    _image = image;
    _userId = userId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  Portofolio.fromJson(dynamic json) {
    _id = json['id'];
    _cvFile = json['cv_file'];
    _name = json['name'];
    _image = json['image'];
    _userId = json['user_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _cvFile;
  String? _name;
  String? _image;
  num? _userId;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get cvFile => _cvFile;
  String? get name => _name;
  String? get image => _image;
  num? get userId => _userId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['cv_file'] = _cvFile;
    map['name'] = _name;
    map['image'] = _image;
    map['user_id'] = _userId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}
