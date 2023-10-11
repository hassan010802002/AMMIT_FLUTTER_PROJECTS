import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/setting/profile-setting.dart';
import 'package:lywing/screen/home/profile.dart';
import 'package:lywing/sizes_helpers.dart';

class Display_Name extends StatefulWidget {
  @override
  _Display_NameState createState() => _Display_NameState();
}

class _Display_NameState extends State<Display_Name> {
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
            AppLocalizations.of(context).translate('DisplayName'),
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
        padding: EdgeInsets.only(
          left: displaySize(context).width * 0.06,
          right: displaySize(context).width * 0.06,
        ),
        children: [
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.06,
            ),
            child: AutoSizeText(
              AppLocalizations.of(context).translate('Yourdisplayname'),
              style: TextStyle(
                color: kGrey400,
              ),
              presetFontSizes: [15, 13, 10, 7],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    AppLocalizations.of(context).translate('DisplayName'),
                    style: TextStyle(
                      fontSize: 11,
                      color: kGrey600,
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: kGrey500,
                          ),
                        ),
                        hintText: 'John Doe'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.02,
            ),
            child: AutoSizeText(
              AppLocalizations.of(context)
                  .translate('Displaynamesmustbeunder50'),
              style: TextStyle(
                color: kGrey400,
              ),
              presetFontSizes: [15, 13, 10, 7],
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile_Setting()),
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
                AppLocalizations.of(context).translate('Save'),
                style: TextStyle(
                  color: kWhite,
                ),
                presetFontSizes: [15, 12, 9, 6],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
