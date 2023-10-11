// ignore_for_file: camel_case_types, library_private_types_in_public_api, non_constant_identifier_names

import 'package:air_wings/common/app_localizations.dart';
import 'package:air_wings/common/constants/colors.dart';
import 'package:air_wings/common/constants/data.dart';
import 'package:air_wings/screen/home/SysManager.dart';
import 'package:air_wings/sizes_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Place_To_Go extends StatefulWidget {
  const Place_To_Go({super.key});

  @override
  _Place_To_GoState createState() => _Place_To_GoState();
}

class _Place_To_GoState extends State<Place_To_Go> {
  final FocusNode focus = FocusNode();
  final TextEditingController _typeAheadController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _typeAheadController.dispose();
  }

  void search_place() {
    showMaterialModalBottomSheet(
      context: context,
      expand: false,
      backgroundColor: kWhite,
      builder: (context) => Container(
        padding: EdgeInsets.only(
          top: displaySize(context).height * 0.06,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: kGrey500,
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                color: kGrey100,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(
                left: displaySize(context).width * 0.02,
                right: displaySize(context).width * 0.02,
              ),
              child: TypeAheadFormField(
                textFieldConfiguration: TextFieldConfiguration(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "City",
                  ),
                  // 2 controller khac nhau
                  controller: _typeAheadController,
                ),
                suggestionsCallback: (pattern) {
                  return CitiesService.getSuggestions(pattern);
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                  );
                },
                transitionBuilder: (context, suggestionBox, controller) {
                  return suggestionBox;
                },
                onSuggestionSelected: (suggestion) {
                  _typeAheadController.text = suggestion;
                  setState(() {
                    FileSystemManager.instance.chosen = true;
                    FileSystemManager.instance.typeAheadController =
                        _typeAheadController.text;
                    print(FileSystemManager.instance.chosen);
                  });
                  Navigator.pop(context);
                },
                validator: (value) =>
                    value!.isEmpty ? 'Please select a city?' : null,
                onSaved: (value) => FocusScope.of(context).requestFocus(focus),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FileSystemManager.instance.chosen = false;
        search_place();
      },
      child: FileSystemManager.instance.chosen == false
          ? Text(
              AppLocalizations.of(context)!.translate('whereYouToGo?')!,
              style: const TextStyle(
                fontSize: 15,
                color: kGrey500,
              ),
            )
          : Text(
              FileSystemManager.instance.typeAheadController.toString(),
              style: const TextStyle(
                fontSize: 15,
                color: kGrey500,
              ),
            ),
    );
  }
}
// mà màn 1 ý sao nó khong quay icon nữa
