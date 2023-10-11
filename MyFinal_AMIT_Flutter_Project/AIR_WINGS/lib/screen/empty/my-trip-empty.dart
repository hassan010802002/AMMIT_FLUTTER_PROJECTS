// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:air_wings/common/app_localizations.dart';
import 'package:air_wings/common/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../sizes_helpers.dart';

class My_Trip_Empty extends StatefulWidget {
  const My_Trip_Empty({super.key});

  @override
  _My_Trip_EmptyState createState() => _My_Trip_EmptyState();
}

class _My_Trip_EmptyState extends State<My_Trip_Empty> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView(
      children: [
        SizedBox(
          width: displaySize(context).width,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: displaySize(context).height / 1.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SvgPicture.asset(
                      ('assets/images/image-empty/suitcases.svg'),
                      height: displaySize(context).height * 0.2,
                      width: displaySize(context).width * 0.2,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        AppLocalizations.of(context)!.translate('Nohistorytrip')!,
                        style: const TextStyle(
                          fontSize: 22,
                          color: kBlack,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: displaySize(context).width * 0.55,
                      child: Text(
                        AppLocalizations.of(context)!
                            .translate('Allyourhistory')!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 15,
                          color: kGrey600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
