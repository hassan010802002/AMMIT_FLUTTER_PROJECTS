import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

import 'delete-my-account-not-delete.dart';

class Delete_My_Account extends StatefulWidget {
  @override
  _Delete_My_AccountState createState() => _Delete_My_AccountState();
}

class _Delete_My_AccountState extends State<Delete_My_Account> {
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
                    .translate('Justsoyouknowbydeletingyouraccount'),
                style: TextStyle(
                  fontSize: 15,
                  color: kBlack,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.04,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.03,
                      bottom: displaySize(context).height * 0.01,
                    ),
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('Youwontbeabletocheckyourpastbookings'),
                      style: TextStyle(
                        fontSize: 15,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: kGrey400,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.03,
                      bottom: displaySize(context).height * 0.01,
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate('Youwontbeable'),
                      style: TextStyle(
                        fontSize: 15,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: kGrey400,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.03,
                      bottom: displaySize(context).height * 0.01,
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate('Youwontreceive'),
                      style: TextStyle(
                        fontSize: 15,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: kGrey400,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.03,
                      bottom: displaySize(context).height * 0.01,
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate('Youllloseall'),
                      style: TextStyle(
                        fontSize: 15,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: kGrey400,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.03,
                      bottom: displaySize(context).height * 0.01,
                    ),
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('Youllalsoloseany'),
                      style: TextStyle(
                        fontSize: 15,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: kGrey400,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.03,
              ),
              child: Text(
                AppLocalizations.of(context)
                    .translate('Ifyoustillwanttodelete'),
                style: TextStyle(
                  fontSize: 15,
                  color: kGrey500,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.02,
              ),
              child: Text(
                AppLocalizations.of(context).translate('YoullloseanyCoinand'),
                style: TextStyle(
                  fontSize: 15,
                  color: kGrey500,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.04,
                bottom: displaySize(context).height * 0.04,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Delete_My_Account_Not_Delete()),
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
    );
  }
}
