import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

import 'email-verfication.dart';

class My_Email extends StatefulWidget {
  @override
  _My_EmailState createState() => _My_EmailState();
}

class _My_EmailState extends State<My_Email> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: InkWell(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: kBlack,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('LinkEmailAddress'),
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.07,
              left: displaySize(context).width * 0.05,
              right: displaySize(context).width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: AutoSizeText(
                    AppLocalizations.of(context)
                        .translate('Pleaseenteranewemailaddress.'),
                    style: TextStyle(
                      color: kGrey600,
                    ),
                    presetFontSizes: [15, 12, 9, 6],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: displaySize(context).height * 0.05,
                    bottom: displaySize(context).height * 0.05,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 11,
                            color: kGrey400,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 5,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: kGrey400,
                              ),
                            ),
                            hintText: "email@example.com",
                            hintStyle: TextStyle(
                              color: kGrey600,
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                            isDense: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Email_Verfication("+0869192945")),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kBlue,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(7.0),
                      ),
                      minimumSize: Size(
                        500,
                        displaySize(context).height * 0.05,
                      ),
                    ),
                    child: AutoSizeText(
                      AppLocalizations.of(context).translate('Next'),
                      style: TextStyle(
                        color: kWhite,
                      ),
                      presetFontSizes: [15, 12, 9, 6],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
