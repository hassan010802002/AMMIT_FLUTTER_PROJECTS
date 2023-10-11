import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

import 'reset-password-verification.dart';

class Form_Reset_Password extends StatefulWidget {
  @override
  _Form_Reset_PasswordState createState() => _Form_Reset_PasswordState();
}

class _Form_Reset_PasswordState extends State<Form_Reset_Password> {
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
            AppLocalizations.of(context).translate('ResetPassword'),
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
              AppLocalizations.of(context)
                  .translate('Verifyyourcontentpassword'),
              style: TextStyle(
                color: kGrey500,
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
                    AppLocalizations.of(context).translate('Currentpassword'),
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
                        hintText: AppLocalizations.of(context)
                            .translate('Entercurrentpassword')),
                  ),
                ),
              ],
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
                    AppLocalizations.of(context).translate('Newpassword'),
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
                      hintText: AppLocalizations.of(context)
                          .translate('Enternewpassword'),
                    ),
                  ),
                ),
              ],
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
                    AppLocalizations.of(context).translate('Confirmpassword'),
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
                      hintText: AppLocalizations.of(context)
                          .translate('Enterconfirmpassword'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.04,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Reset_Password_Verification('+0975523056')),
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
                AppLocalizations.of(context).translate('Submit'),
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
