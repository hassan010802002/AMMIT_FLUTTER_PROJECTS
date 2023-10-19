// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Home_Services {
  static final _auth = FirebaseAuth.instance;
  static final _store = FirebaseFirestore.instance;
  static final _storage = FirebaseStorage.instance;
  static int counter = 0;

  static Future<String> Upload_Image_to_Storage({required String pathImage}) async {
    try {
      Reference ref = _storage.ref().child('car_images/$pathImage');
      TaskSnapshot uploadedImage = await ref.putFile(File(pathImage));
      String imageLink = await uploadedImage.ref.getDownloadURL();
      print("___________Image Link Retrived_____________");
      return imageLink;
    } on Exception catch (e) {
      throw Exception("Error Occurred While Retrieving Image Link");
    }
  }

  static void Upload_ImageURL_to_FireStore({required String? imageLink}) async {
    try {
      counter++;
      await _store.collection("ADS").doc(_auth.currentUser!.uid).set(<String, String>{
        "image-$counter": imageLink!,
      });
      print("___________Image Uploaded_____________");
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
