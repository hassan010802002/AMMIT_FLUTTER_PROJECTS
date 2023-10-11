import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Verify_Phone_Success extends StatefulWidget {
  @override
  _Verify_Phone_SuccessState createState() => _Verify_Phone_SuccessState();
}

class _Verify_Phone_SuccessState extends State<Verify_Phone_Success> {
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
            AppLocalizations.of(context).translate('PasswordResetSuccess'),
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
                bottom: displaySize(context).height * 0.05,
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
              alignment: Alignment.center,
              child: Text(
                AppLocalizations.of(context)
                    .translate('Yourpasswordresetsuccessfully!'),
                style: TextStyle(
                  fontSize: 17,
                  color: kBlack,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.05,
                bottom: displaySize(context).height * 0.05,
              ),
              child: AutoSizeText(
                AppLocalizations.of(context)
                    .translate('Yourpasswordhasbeenresetsuccessfully'),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kBlack,
                ),
                presetFontSizes: [17, 14, 11, 8],
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => Verify_Success()),
                  // );
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
                child: Text(
                  AppLocalizations.of(context).translate('Done'),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    //       fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
