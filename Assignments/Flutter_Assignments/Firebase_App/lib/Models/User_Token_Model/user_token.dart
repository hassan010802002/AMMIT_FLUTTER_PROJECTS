import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? name;
  String? id;
  String? phone;
  String? userName;
  String? password;
  String? email;

  UserModel({
    this.name,
    this.id,
    this.phone,
    this.userName,
    this.password,
    this.email,
  });

  toJson() {
    Map<String, dynamic> data = {};
    data['name'] = name;
    data['phone'] = phone;
    data['id'] = id;
    data['username'] = userName;
    data['password'] = password;
    data['email'] = email;
    return data;
  }

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    phone = json['phone'];
    userName = json['username'];
    password = json['password'];
    email = json['email'];
  }
}
