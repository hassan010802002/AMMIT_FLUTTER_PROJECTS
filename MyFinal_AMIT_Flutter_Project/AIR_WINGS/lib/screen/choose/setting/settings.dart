import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/setting/currency.dart';
import 'package:lywing/screen/choose/setting/language.dart';
import 'package:lywing/screen/choose/setting/units.dart';
import 'package:lywing/sizes_helpers.dart';

import 'notification-settings.dart';
import 'privacy-statements.dart';
import 'temperature_scale.dart';
import 'version.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: kBlack,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('Settings'),
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
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              top: 30,
            ),
            decoration: BoxDecoration(
              color: kWhite,
              border: Border.all(
                width: 0,
                color: kWhite,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  // spreadRadius: 6,
                  blurRadius: 15,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Icon(
                          MaterialIcons.home,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)
                                          .translate('Home'),
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: kBlack,
                                      ),
                                    ),
                                    AutoSizeText(
                                      "Style1",
                                      style: TextStyle(
                                        color: kGrey300,
                                      ),
                                      presetFontSizes: [15, 12, 9, 6],
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => Notifications()),
                                //   );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Icon(
                          MaterialIcons.g_translate,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)
                                          .translate('Language'),
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: kBlack,
                                      ),
                                    ),
                                    AutoSizeText(
                                      "English",
                                      style: TextStyle(
                                        color: kGrey300,
                                      ),
                                      presetFontSizes: [15, 12, 9, 6],
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Language()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Icon(
                          MaterialIcons.public,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)
                                          .translate('CountryorRegion'),
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: kBlack,
                                      ),
                                    ),
                                    AutoSizeText(
                                      "VietNam",
                                      style: TextStyle(
                                        color: kGrey300,
                                      ),
                                      presetFontSizes: [15, 12, 9, 6],
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => My_Booking()),
                                // );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Icon(
                          MaterialIcons.attach_money,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)
                                          .translate('Currency'),
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: kBlack,
                                      ),
                                    ),
                                    AutoSizeText(
                                      "USD",
                                      style: TextStyle(
                                        color: kGrey300,
                                      ),
                                      presetFontSizes: [15, 12, 9, 6],
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Currency()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Icon(
                          FontAwesomeIcons.rulerCombined,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)
                                          .translate('Units'),
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: kBlack,
                                      ),
                                    ),
                                    AutoSizeText(
                                      "Metric (km, m²)",
                                      style: TextStyle(
                                        color: kGrey300,
                                      ),
                                      presetFontSizes: [15, 12, 9, 6],
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Untis()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Icon(
                          MaterialIcons.ac_unit,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    AutoSizeText(
                                      AppLocalizations.of(context)
                                          .translate('TemperatureScale'),
                                      style: TextStyle(
                                        color: kBlack,
                                      ),
                                      presetFontSizes: [14, 12, 9, 6],
                                    ),
                                    AutoSizeText(
                                      "Celsius (°C)",
                                      style: TextStyle(
                                        color: kGrey300,
                                      ),
                                      presetFontSizes: [14, 12, 9, 6],
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Temperature_Scale()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 30,
            ),
            decoration: BoxDecoration(
              color: kWhite,
              border: Border.all(
                width: 0,
                color: kWhite,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  // spreadRadius: 6,
                  blurRadius: 15,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(
                          FontAwesome5Solid.moon,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Transform(
                                transform:
                                    Matrix4.translationValues(-15, 0.0, 0.0),
                                child: Text(
                                  "Dark mode",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              trailing: CupertinoSwitch(
                                value: _switchValue,
                                onChanged: (value) {
                                  setState(() {
                                    _switchValue = value;
                                  });
                                },
                              ),
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => Customer_Support()),
                                // );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(
                          FontAwesome5Solid.qrcode,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Transform(
                                transform:
                                    Matrix4.translationValues(-15, 0.0, 0.0),
                                child: Text(
                                  "Scan QR code",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => Customer_Support()),
                                // );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(
                          MaterialIcons.notifications,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Transform(
                                transform:
                                    Matrix4.translationValues(-15, 0.0, 0.0),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('NotificationsSettings'),
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Notification_Settings()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(
                          MaterialIcons.crop,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Transform(
                                transform:
                                    Matrix4.translationValues(-15, 0.0, 0.0),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Screenshottoshare'),
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => Add_Passenger()),
                                // );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(
                          MaterialIcons.lock,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Transform(
                                transform:
                                    Matrix4.translationValues(-15, 0.0, 0.0),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('PrivacyStatement'),
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Privacy_Statements()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.lens,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Transform(
                                transform:
                                    Matrix4.translationValues(-15, 0.0, 0.0),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('RatethisApp'),
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => Add_Passenger()),
                                // );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(
                          FontAwesomeIcons.codeBranch,
                          color: kGrey400,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: <Widget>[
                            ListTile(
                              title: Transform(
                                transform:
                                    Matrix4.translationValues(-15, 0.0, 0.0),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Version'),
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                              trailing: Icon(
                                Icons.navigate_next,
                                color: kGrey400,
                                size: 30,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Version()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
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
