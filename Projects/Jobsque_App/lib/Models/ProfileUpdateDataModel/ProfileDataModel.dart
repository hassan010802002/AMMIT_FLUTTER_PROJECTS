/// status : true
/// data : {"bio":"tena","address":"mohamed","mobile":"tena","language":"en","interested_work":"data","offline_place":"data","remote_place":"data","experience":"data","personal_detailed":"data","education":null}

class ProfileUpdateDataModel {
  ProfileUpdateDataModel({
      bool? status, 
      Data? data,}){
    _status = status;
    _data = data;
}

  ProfileUpdateDataModel.fromJson(dynamic json) {
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

/// bio : "tena"
/// address : "mohamed"
/// mobile : "tena"
/// language : "en"
/// interested_work : "data"
/// offline_place : "data"
/// remote_place : "data"
/// experience : "data"
/// personal_detailed : "data"
/// education : null

class Data {
  Data({
      String? bio, 
      String? address, 
      String? mobile, 
      String? language, 
      String? interestedWork, 
      String? offlinePlace, 
      String? remotePlace, 
      String? experience, 
      String? personalDetailed, 
      dynamic education,}){
    _bio = bio;
    _address = address;
    _mobile = mobile;
    _language = language;
    _interestedWork = interestedWork;
    _offlinePlace = offlinePlace;
    _remotePlace = remotePlace;
    _experience = experience;
    _personalDetailed = personalDetailed;
    _education = education;
}

  Data.fromJson(dynamic json) {
    _bio = json['bio'];
    _address = json['address'];
    _mobile = json['mobile'];
    _language = json['language'];
    _interestedWork = json['interested_work'];
    _offlinePlace = json['offline_place'];
    _remotePlace = json['remote_place'];
    _experience = json['experience'];
    _personalDetailed = json['personal_detailed'];
    _education = json['education'];
  }
  String? _bio;
  String? _address;
  String? _mobile;
  String? _language;
  String? _interestedWork;
  String? _offlinePlace;
  String? _remotePlace;
  String? _experience;
  String? _personalDetailed;
  dynamic _education;

  String? get bio => _bio;
  String? get address => _address;
  String? get mobile => _mobile;
  String? get language => _language;
  String? get interestedWork => _interestedWork;
  String? get offlinePlace => _offlinePlace;
  String? get remotePlace => _remotePlace;
  String? get experience => _experience;
  String? get personalDetailed => _personalDetailed;
  dynamic get education => _education;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bio'] = _bio;
    map['address'] = _address;
    map['mobile'] = _mobile;
    map['language'] = _language;
    map['interested_work'] = _interestedWork;
    map['offline_place'] = _offlinePlace;
    map['remote_place'] = _remotePlace;
    map['experience'] = _experience;
    map['personal_detailed'] = _personalDetailed;
    map['education'] = _education;
    return map;
  }

}