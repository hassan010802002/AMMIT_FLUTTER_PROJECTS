import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Manage_Accounts extends StatefulWidget {
  @override
  _Manage_AccountsState createState() => _Manage_AccountsState();
}

class _Manage_AccountsState extends State<Manage_Accounts> {
  bool _loginFacebook = false;
  bool _loginApple = false;
  bool _loginGoole = false;

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
            AppLocalizations.of(context).translate('ManageAccounts'),
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
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    width: 35,
                    height: 35,
                    child: SvgPicture.asset(
                      ('assets/images/facebook-24px.svg'),
                      width: displaySize(context).width * 0.05,
                      height: displaySize(context).height * 0.05,
                    ),
                  ),
                  title: Align(
                    alignment: Alignment(-1, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Facebook",
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)
                              .translate('LoginviaFacebook'),
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: CupertinoSwitch(
                    value: _loginFacebook,
                    onChanged: (value) {
                      setState(() {
                        _loginFacebook = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: 35,
                    height: 35,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: kGrey400,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: SvgPicture.asset(
                      ('assets/images/apple-brands.svg'),
                      width: displaySize(context).width * 0.03,
                      height: displaySize(context).height * 0.03,
                    ),
                  ),
                  title: Align(
                    alignment: Alignment(-1, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Apple",
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)
                              .translate('SignInwithApple'),
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: CupertinoSwitch(
                    value: _loginFacebook,
                    onChanged: (value) {
                      setState(() {
                        _loginFacebook = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: 35,
                    height: 35,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: kGrey400,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: SvgPicture.asset(
                      ('assets/images/google-brands.svg'),
                      width: displaySize(context).width * 0.03,
                      height: displaySize(context).height * 0.03,
                    ),
                  ),
                  title: Align(
                    alignment: Alignment(-1, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Goolge",
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          AppLocalizations.of(context)
                              .translate('SignInwithGoogle'),
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: CupertinoSwitch(
                    value: _loginFacebook,
                    onChanged: (value) {
                      setState(() {
                        _loginFacebook = value;
                      });
                    },
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
