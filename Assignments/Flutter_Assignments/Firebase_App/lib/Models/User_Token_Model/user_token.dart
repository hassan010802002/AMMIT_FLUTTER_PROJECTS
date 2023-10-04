import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  String ?name;
  String ?id;
  String ?phone;
  String ?deviceToken;
  UserModel({this.name,this.id,this.phone,this.deviceToken});


  toJson(){
    Map<String, dynamic> data = {};
    data['name'] = name;
    data['deviceToken'] = deviceToken;
    data['phone'] = phone;
    data['id'] = id;
    return data;
  }
  UserModel.fromJson(DocumentSnapshot<Map<String, dynamic>> json ){
    name=json['name'];
    id=json['id'];
    phone=json['phone'];
    deviceToken=json['deviceToken'];


  }
}