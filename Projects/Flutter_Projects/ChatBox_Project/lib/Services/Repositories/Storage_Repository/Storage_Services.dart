// ignore_for_file: camel_case_types, non_constant_identifier_names, use_build_context_synchronously

import 'dart:io';
import 'dart:typed_data';

import 'package:chatbox_project/Helpers/SnackBar_Helper/SnackBar_helper.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class Storage_Services {
  static final Reference storageRef = FirebaseStorage.instance.ref('Storage');
  static final Reference mediaDir = storageRef.child("Media");
  static final Reference fileDir = mediaDir.child('Documents');
  static final Reference imagesDir = mediaDir.child('Images');
  static final Reference videosDir = mediaDir.child('Videos');
  static final Reference audiosDir = mediaDir.child('Audios');

  static Future<String?>? UploadingDocumentFile({required String docFilePath, required BuildContext context}) async {
    final File file = File(docFilePath);
    String? docFileUrl;
    try {
      await fileDir.child(file.path).putFile(file).then((p0) async{
        docFileUrl = await p0.ref.getDownloadURL();
      });
      print("Document File Url is: $docFileUrl");
      return docFileUrl!;
    } on FirebaseException catch (e) {
      print(e);
      SnackBar_Helper.showErrorToast(context, "Failed To Upload the File on Firebase Storage");
    }
  }

  static Future<String?>? UploadingAudioFile({required String audioFilePath, required BuildContext context}) async {
    final File file = File(audioFilePath);
    String? audioFileUrl;
    try {
      await audiosDir.child(file.path).putFile(file).then((p0) async{
        audioFileUrl = await p0.ref.getDownloadURL();
      });
      print("Audio File Url is: $audioFileUrl");
      return audioFileUrl!;
    } on FirebaseException catch (e) {
      print(e);
      SnackBar_Helper.showErrorToast(context, "Failed To Upload the File on Firebase Storage");
    }
  }

  static Future<String?>? UploadingImagesFile({required String imageFilePath, required BuildContext context}) async {
    final File file = File(imageFilePath);
    String? imageFileUrl;
    try {
      await imagesDir.child(file.path).putFile(file).then((p0)async{
        imageFileUrl =await p0.ref.getDownloadURL();
      });
      print("Image File Url is: $imageFileUrl");
      return imageFileUrl!;
    } on FirebaseException catch (e) {
      print(e);
      SnackBar_Helper.showErrorToast(context, "Failed To Upload the File on Firebase Storage");
    }
  }

  static Future<String?>? UploadingVideoFile({required String videoFilePath, required BuildContext context}) async {
    final File file = File(videoFilePath);
    String? videoFileUrl;
    try {
      await videosDir.child(file.path).putFile(file).then((p0)async{
        videoFileUrl =await p0.ref.getDownloadURL();
      });
      print("Image File Url is: $videoFileUrl");
      return videoFileUrl!;
    } on FirebaseException catch (e) {
      print(e);
      SnackBar_Helper.showErrorToast(context, "Failed To Upload the File on Firebase Storage");
    }
  }

  static void RetrievingAudios() async{
    final Uint8List? audioFiles = await audiosDir.getData();
    for (var element in audioFiles!) {
      print(element);
    }
  }
}
