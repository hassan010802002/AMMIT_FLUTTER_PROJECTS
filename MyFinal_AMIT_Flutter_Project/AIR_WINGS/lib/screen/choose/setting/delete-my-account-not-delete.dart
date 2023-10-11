import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Delete_My_Account_Not_Delete extends StatefulWidget {
  @override
  _Delete_My_Account_Not_DeleteState createState() =>
      _Delete_My_Account_Not_DeleteState();
}

class _Delete_My_Account_Not_DeleteState
    extends State<Delete_My_Account_Not_Delete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: kGrey500,
            ),
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('DeleteMyAccount'),
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: displaySize(context).width * 0.05,
          right: displaySize(context).width * 0.05,
        ),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.05,
              ),
              child: ClipOval(
                child: Image(
                  width: displaySize(context).width * 0.15,
                  height: displaySize(context).height * 0.15,
                  image: AssetImage('assets/images/Avatar.png'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.03,
              ),
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)
                    .translate('YourAccountCouldNotbeDeleted'),
                style: TextStyle(
                  fontSize: 17,
                  color: kBlack,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.03,
              ),
              alignment: Alignment.center,
              child: AutoSizeText(
                AppLocalizations.of(context)
                    .translate('Sorryyouraccountcouldnotbedeletedbecause'),
                style: TextStyle(
                  color: kGrey400,
                ),
                presetFontSizes: [14, 10, 7, 5],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.05,
              ),
              alignment: Alignment.center,
              child: AutoSizeText(
                AppLocalizations.of(context)
                    .translate('PasswordResetYouchangedtheemaillinked'),
                style: TextStyle(
                  color: kBlack,
                ),
                presetFontSizes: [15, 13, 10, 7],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
