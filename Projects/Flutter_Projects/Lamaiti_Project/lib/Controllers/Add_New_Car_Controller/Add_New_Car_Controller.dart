import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lamaiti/Consts/Add_New_Car_Consts.dart';

class Add_New_Car_Controller extends GetxController {
  ImagePicker picker = ImagePicker();
  RxString selectedImage = "".obs;
  final carTypes = Add_New_Car_Consts.carsLabels.obs;
  RxMap<String, DropdownMenuEntry<String>> carEntries =
      <String, DropdownMenuEntry<String>>{}.obs;
  TextEditingController menuController = TextEditingController();
  List<DropdownMenuEntry<String>> theEntries =
      <DropdownMenuEntry<String>>[].obs;
  var initialSelectedItem;

  List<DropdownMenuEntry<String>> carMenuEntries() {
    for (String type in carTypes.value) {
      carEntries.value.addIf(
        true,
        type,
        DropdownMenuEntry(
          value: type,
          label: type,
          enabled: true,
        ),
      );
    }
    theEntries = carEntries.value.values.toList();
    return theEntries;
  }

  void theOnSelected(var currentItem) {
    initialSelectedItem = currentItem;
  }

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

  @override
  void onInit() {
    super.onInit();
    carMenuEntries();
  }

  void Navigate(dynamic page) {
    Get.to(page);
  }

  void Navigate_Without_Return(dynamic page) {
    Get.off(page);
  }
}
