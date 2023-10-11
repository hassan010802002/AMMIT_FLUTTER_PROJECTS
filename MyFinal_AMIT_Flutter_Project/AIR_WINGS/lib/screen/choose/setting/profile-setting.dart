import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/setting/link-phone-number.dart';
import 'package:lywing/screen/choose/setting/manage-accounts.dart';
import 'package:lywing/screen/choose/setting/display-name.dart';
import 'package:lywing/screen/choose/setting/my-email.dart';
import 'package:lywing/screen/choose/setting/reset-password.dart';
import 'package:lywing/screen/choose/setting/saved-flights.dart';
import 'package:lywing/sizes_helpers.dart';

import '../passengers.dart';
import 'delete-my-account.dart';
import 'edit-profile.dart';
import 'my-booking.dart';
import 'my-cards.dart';
import 'notifications.dart';

class Profile_Setting extends StatefulWidget {
  @override
  _Profile_SettingState createState() => _Profile_SettingState();
}

class _Profile_SettingState extends State<Profile_Setting> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
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
          backgroundColor: kWhite,
        ),
        body: ListView(
          children: <Widget>[
            // Container(
            //   color: kWhite,
            //   padding: EdgeInsets.only(
            //     left: displaySize(context).width * 0.02,
            //     right: displaySize(context).width * 0.02,
            //     bottom: displaySize(context).width * 0.03,
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: <Widget>[
            //       Container(
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: <Widget>[
            //             // Ten va nut
            //             Container(
            //               child: Row(
            //                 children: <Widget>[
            //                   Container(
            //                     child: Text(
            //                       'Ha Van Long',
            //                       style: TextStyle(
            //                         fontSize: 17,
            //                         color: kBlack,
            //                       ),
            //                     ),
            //                   ),
            //                   Container(
            //                     child: TextButton(
            //                       onPressed: () {
            //                         Navigator.push(
            //                           context,
            //                           MaterialPageRoute(
            //                               builder: (context) => Edit_Profile()),
            //                         );
            //                       },
            //                       style: ElevatedButton.styleFrom(
            //                         primary: kWhite,
            //                       ).merge(
            //                         ButtonStyle(
            //                           overlayColor: MaterialStateProperty
            //                               .resolveWith<Color>(
            //                                   (Set<MaterialState> states) {
            //                             if (states
            //                                 .contains(MaterialState.pressed))
            //                               return kWhite;
            //                             return null; // Defer to the widget's default.
            //                           }),
            //                         ),
            //                       ),
            //                       child: Icon(
            //                         Icons.navigate_next,
            //                         color: kGrey400,
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //
            //             //Dia chi
            //             Container(
            //               child: Text(
            //                 'HaNoi, VietNam',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                   color: kGrey400,
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       InkWell(
            //         onTap: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => Edit_Profile()),
            //           );
            //         },
            //         child: ClipOval(
            //           child: Image(
            //             width: displaySize(context).width * 0.15,
            //             image: AssetImage('assets/images/Avatar.png'),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
                            MaterialIcons.email,
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
                                        .translate('MyEmail'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => My_Email()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
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
                            MaterialIcons.call,
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
                                        .translate('LinkPhoneNumber'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Link_Phone_Number()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
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
                            MaterialIcons.insert_link,
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
                                        .translate('LinkedAccounts'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Manage_Accounts()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
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
                            MaterialIcons.create,
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
                                        .translate('DisplayName'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Display_Name()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
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
                            MaterialIcons.vpn_key,
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
                                        .translate('ResetPassword'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Reset_Password()),
                                  );
                                },
                              ),
                              Divider(
                                color: kGrey300,
                                height: 2,
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
                            MaterialIcons.delete,
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
                                        .translate('DeleteMyAccount'),
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBlack,
                                    ),
                                  ),
                                ),
                                trailing: Icon(
                                  Icons.navigate_next,
                                  color: kGrey400,
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Delete_My_Account()),
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
              decoration: BoxDecoration(
                color: kGrey200,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: EdgeInsets.only(
                top: displaySize(context).height * 0.01,
                bottom: displaySize(context).height * 0.01,
              ),
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.03,
                left: displaySize(context).width * 0.04,
                right: displaySize(context).width * 0.04,
              ),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesome5Solid.sign_out_alt,
                      color: kGrey600,
                      size: 17,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: displaySize(context).width * 0.02,
                      ),
                      child: AutoSizeText(
                        AppLocalizations.of(context).translate('SignOut'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: kGrey600,
                        ),
                        presetFontSizes: [17, 14, 11, 9],
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
