import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Consts/Add_New_Car_Consts.dart';
import 'package:lamaiti/Controllers/Add_New_Car_Controller/Add_New_Car_Controller.dart';

class CustomDropdownMenu extends StatelessWidget {
  Add_New_Car_Controller controller = Get.put(Add_New_Car_Controller());
  double menuWidth;
  Text menuLabel;
  String hintText;
  Icon leadingIcon;
  List<DropdownMenuEntry<String>> menuItems;
  double menuHeight;

  CustomDropdownMenu(
      {super.key,
      this.menuWidth = 380,
      this.menuLabel = Add_New_Car_Consts.menuLabel,
      this.hintText = Add_New_Car_Consts.hintText,
      this.leadingIcon = const Icon(Icons.search_rounded),
      required this.menuItems ,
      this.menuHeight = 500});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      label: menuLabel,
      enabled: true,
      enableSearch: true,
      enableFilter: true,
      width: menuWidth,
      initialSelection: controller.initialSelectedItem,
      onSelected: (value) {
        controller.theOnSelected(value);
      },
      hintText: hintText,
      leadingIcon: leadingIcon,
      requestFocusOnTap: true,
      controller: controller.menuController,
      inputDecorationTheme: Add_New_Car_Consts.inputDecorationTheme,
      textStyle: Add_New_Car_Consts.menuTextStyle,
      menuHeight: menuHeight,
      menuStyle: Add_New_Car_Consts.menuStyle,
      dropdownMenuEntries: [...menuItems],
    );
  }
}
