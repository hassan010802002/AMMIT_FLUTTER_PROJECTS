// ignore_for_file: camel_case_types, library_private_types_in_public_api, non_constant_identifier_names, must_be_immutable

import 'package:air_wings/common/app_localizations.dart';
import 'package:air_wings/common/constants/colors.dart';
import 'package:air_wings/screen/home/SysManager.dart';
import 'package:air_wings/sizes_helpers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Choose_Type extends StatefulWidget {
  const Choose_Type({super.key});

  @override
  _Choose_TypeState createState() => _Choose_TypeState();
}

class _Choose_TypeState extends State<Choose_Type> {
  int typeIcon = 0;
  String selection = "Return";

  Future type_of_flight() async {
    final option = await showModalBottomSheet(
      context: context,
      backgroundColor: kWhite,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      builder: (context) => Container(
        height: displaySize(context).height * 0.3,
        padding: const EdgeInsets.only(
          top: 25,
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                AppLocalizations.of(context)!.translate('Type')!,
                style: const TextStyle(
                  fontSize: 20,
                  color: kBlack,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              width: displaySize(context).width,
              child: Column(
                children: <Widget>[
                  TypeTravel(FontAwesomeIcons.rightLeft, "Return", () {
                    typeIcon = 0;
                    Navigator.pop(context,
                        (AppLocalizations.of(context)!.translate('Return')));
                  }),
                  TypeTravel(FontAwesomeIcons.arrowRightLong, "oneWay", () {
                    typeIcon = 1;
                    Navigator.pop(context,
                        (AppLocalizations.of(context)!.translate('oneWay')));
                  }),
                  TypeTravel(Icons.call_split, "multiCity", () {
                    typeIcon = 2;
                    Navigator.pop(context,
                        (AppLocalizations.of(context)!.translate('multiCity')));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    setState(() {
      selection = option;
      FileSystemManager.instance.type = typeIcon;
      FileSystemManager.instance.typestring = selection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        type_of_flight();
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ), backgroundColor: kGrey200,
        elevation: 0,
      ),
      child: Row(
        children: <Widget>[
          Icon(
            FileSystemManager.instance.type == 0
                ? FontAwesomeIcons.rightLeft
                : FileSystemManager.instance.type == 1
                    ? FontAwesomeIcons.arrowRightLong
                    : Icons.call_split,
            size: 15,
            color: kGrey600,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              FileSystemManager.instance.type == 0
                  ? "Return"
                  : FileSystemManager.instance.typestring.toString(),
              style: const TextStyle(
                fontSize: 15,
                color: kGrey600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Choose_Type1 extends StatefulWidget {
  const Choose_Type1({super.key});

  @override
  _Choose_Type1State createState() => _Choose_Type1State();
}

class _Choose_Type1State extends State<Choose_Type1> {
  int typeIcon = 0;
  String selection = "Return";

  Future type_of_flight() async {
    final option = await showModalBottomSheet(
      context: context,
      backgroundColor: kWhite,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      builder: (context) => Container(
        height: displaySize(context).height * 0.3,
        padding: const EdgeInsets.only(
          top: 25,
          left: 10,
          right: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                AppLocalizations.of(context)!.translate('Type')!,
                style: const TextStyle(
                  fontSize: 20,
                  color: kBlack,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              width: displaySize(context).width,
              child: Column(
                children: <Widget>[
                  TypeTravel(FontAwesomeIcons.rightLeft, "Return", () {
                    typeIcon = 0;
                    Navigator.pop(context,
                        (AppLocalizations.of(context)?.translate('Return')));
                  }),
                  TypeTravel(FontAwesomeIcons.arrowRightLong, "oneWay", () {
                    typeIcon = 1;
                    Navigator.pop(context,
                        (AppLocalizations.of(context)!.translate('oneWay')));
                  }),
                  TypeTravel(Icons.call_split, "multiCity", () {
                    typeIcon = 2;
                    Navigator.pop(context,
                        (AppLocalizations.of(context)?.translate('multiCity')));
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    setState(() {
      selection = option;
      FileSystemManager.instance.type = typeIcon;
      FileSystemManager.instance.typestring = selection;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        type_of_flight();
      },
      child: Row(
        children: <Widget>[
          Icon(
            FileSystemManager.instance.type == 0
                ? FontAwesomeIcons.rightLeft
                : FileSystemManager.instance.type == 1
                    ? FontAwesomeIcons.arrowRightLong
                    : Icons.call_split,
            size: 15,
            color: kGrey600,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              FileSystemManager.instance.type == 0
                  ? "Return"
                  : FileSystemManager.instance.typestring.toString(),
              style: const TextStyle(
                fontSize: 15,
                color: kGrey600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TypeTravel extends StatelessWidget {
  IconData? icon;
  String? typeTravel;
  void Function()? onPress;

  TypeTravel(this.icon, this.typeTravel, this.onPress, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: kWhite,
          elevation: 0,
          side: const BorderSide(
            width: 0.0,
            color: kWhite,
          ),
        ),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: kGrey500,
              size: 15,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                AppLocalizations.of(context)!.translate('$typeTravel')!,
                style: const TextStyle(
                  fontSize: 15,
                  color: kBlack,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
