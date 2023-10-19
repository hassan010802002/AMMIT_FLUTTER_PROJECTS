// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:firebase_app/Services/Home_Services/Home_Services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Home_Controller extends GetxController {
  ImagePicker picker = ImagePicker();
  RxString selectedImage = "".obs;

  void selectImage() async {
    try {
      final pickedImage =
      await picker.pickImage(source: ImageSource.gallery, imageQuality: 20);
      if (pickedImage != null) {
        selectedImage.value = pickedImage.path;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  void Submitting_Image() async{
    final myImageLink = await Home_Services.Upload_Image_to_Storage(pathImage: selectedImage.value);
    Home_Services.Upload_ImageURL_to_FireStore(imageLink: myImageLink);
  }
}