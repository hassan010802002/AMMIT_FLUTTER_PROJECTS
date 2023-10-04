import 'package:cloud_firestore/cloud_firestore.dart';

class AdsModel {
  final String? image;

  AdsModel({this.image});

  factory AdsModel.fromJson(DocumentSnapshot snapshot) {
    return AdsModel(image: snapshot["image"]);
  }
}
