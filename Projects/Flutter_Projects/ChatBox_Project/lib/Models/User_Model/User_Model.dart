/// ID : "userId1234567890"
/// displayName : "UserName"
/// email : "example.com"
/// phone : "123-456-7890"
/// avatarPhoto : "photo Url"

class UserModel {
  UserModel({
      String? id, 
      String? displayName, 
      String? email, 
      String? phone, 
      String? avatarPhoto,}){
    _id = id;
    _displayName = displayName;
    _email = email;
    _phone = phone;
    _avatarPhoto = avatarPhoto;
}

  UserModel.fromJson(dynamic json) {
    _id = json['ID'];
    _displayName = json['displayName'];
    _email = json['email'];
    _phone = json['phone'];
    _avatarPhoto = json['avatarPhoto'];
  }
  String? _id;
  String? _displayName;
  String? _email;
  String? _phone;
  String? _avatarPhoto;

  String? get id => _id;
  String? get displayName => _displayName;
  String? get email => _email;
  String? get phone => _phone;
  String? get avatarPhoto => _avatarPhoto;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ID'] = _id;
    map['displayName'] = _displayName;
    map['email'] = _email;
    map['phone'] = _phone;
    map['avatarPhoto'] = _avatarPhoto;
    return map;
  }

}