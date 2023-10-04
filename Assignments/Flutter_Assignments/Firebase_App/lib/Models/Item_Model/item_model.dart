import 'package:cloud_firestore/cloud_firestore.dart';

class ItemModel{
  String ? imageUrl;
  String ? pieces;
  String ? address;
  String ? time;
  String ? date;
  String ? areaNumber;
  String ? lng;
  String ? lat;
  String? status;
  String ? landMark;
  String ? usertoken;
  String ? apartmentNumber;
  ItemModel({this.date,this.imageUrl,
    this.status,
    this.lat,
    this.lng,
    this.address,this.pieces,this.time, this.apartmentNumber, this.landMark,  this.usertoken, this.areaNumber});
  toJson(){
    Map<String, dynamic> data = {};
    data['imageUrl'] = imageUrl;
    data['date'] = date;
    data['pieces'] = pieces;
    data['time'] = time;
    data['lng'] = lng;
    data['lat'] = lat;
    data['apartmentNumber'] = apartmentNumber;
    data['status'] = status;
    data['landMark'] = landMark;
    data['areaNumber'] = areaNumber;
    data['address'] = address;
    data['usertoken'] = usertoken;
    return data;
  }
  ItemModel.fromJson(QueryDocumentSnapshot<Map<String, dynamic>> json ){
    date=json['date'];
    pieces=json['pieces'];
    address=json['address'];
    time=json['time'];
    lat=json['lat'];
    lng=json['lng'];
    imageUrl=json['imageUrl'];
    usertoken=json['usertoken'];
    apartmentNumber=json['apartmentNumber'];
    status=json['status'];
    landMark=json['landMark'];
    areaNumber=json['areaNumber'];
  }

}