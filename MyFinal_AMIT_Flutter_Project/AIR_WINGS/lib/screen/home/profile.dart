// ignore_for_file: library_private_types_in_public_api

import 'package:air_wings/common/app_localizations.dart';
import 'package:air_wings/common/constants/colors.dart';
import 'package:air_wings/screen/choose/passengers.dart';
import 'package:air_wings/screen/choose/setting/customer-support.dart';
import 'package:air_wings/screen/choose/setting/edit-profile.dart';
import 'package:air_wings/screen/choose/setting/my-booking.dart';
import 'package:air_wings/screen/choose/setting/my-cards.dart';
import 'package:air_wings/screen/choose/setting/notifications.dart';
import 'package:air_wings/screen/choose/setting/profile-setting.dart';
import 'package:air_wings/screen/choose/setting/saved-flights.dart';
import 'package:air_wings/screen/choose/setting/settings.dart';
import 'package:air_wings/screen/choose/setting/terms-conditions.dart';
import 'package:air_wings/sizes_helpers.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Container(
            color: kWhite,
            padding: EdgeInsets.only(
              top: displaySize(context).height * 0.04,
              bottom: displaySize(context).height * 0.01,
              left: displaySize(context).width * 0.02,
              right: displaySize(context).width * 0.02,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Ten va nut
                    Row(
                      children: <Widget>[
                        const Text(
                          'Ha Van Long',
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Edit_Profile()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kWhite,
                          ).merge(
                            ButtonStyle(
                              overlayColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return kWhite;
                                }
                                return kWhite; // Defer to the widget's default.
                              }),
                            ),
                          ),
                          child: const Icon(
                            Icons.navigate_next,
                            color: kGrey400,
                          ),
                        ),
                      ],
                    ),

                    //Dia chi
                    const Text(
                      'HaNoi, VietNam',
                      style: TextStyle(
                        fontSize: 12,
                        color: kGrey400,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Edit_Profile()),
                    );
                  },
                  child: ClipOval(
                    child: Image(
                      width: displaySize(context).width * 0.15,
                      height: displaySize(context).height * 0.15,
                      image: const AssetImage('assets/images/Avatar.png'),
                    ),
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
              boxShadow: const [
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
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.account_circle,
                        color: kGrey400,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Transform(
                              transform: Matrix4.translationValues(-15, 0.0, 0.0),
                              child: Text(
                                AppLocalizations.of(context)!.translate('Profile')!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.navigate_next,
                              color: kGrey400,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Profile_Setting()),
                              );
                            },
                          ),
                          const Divider(
                            color: kGrey300,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.notifications,
                        color: kGrey400,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Transform(
                              transform: Matrix4.translationValues(-15, 0.0, 0.0),
                              child: Text(
                                AppLocalizations.of(context)!.translate('Notifications')!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.navigate_next,
                              color: kGrey400,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Notifications()),
                              );
                            },
                          ),
                          const Divider(
                            color: kGrey300,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.confirmation_number,
                        color: kGrey400,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Transform(
                              transform: Matrix4.translationValues(-15, 0.0, 0.0),
                              child: Text(
                                AppLocalizations.of(context)!.translate('MyBooking')!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.navigate_next,
                              color: kGrey400,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => My_Booking()),
                              );
                            },
                          ),
                          const Divider(
                            color: kGrey300,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.perm_identity,
                        color: kGrey400,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Transform(
                              transform: Matrix4.translationValues(-15, 0.0, 0.0),
                              child: Text(
                                AppLocalizations.of(context)!.translate('Passengersinfo')!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.navigate_next,
                              color: kGrey400,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Passengers()),
                              );
                            },
                          ),
                          const Divider(
                            color: kGrey300,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.credit_card,
                        color: kGrey400,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Transform(
                              transform: Matrix4.translationValues(-15, 0.0, 0.0),
                              child: Text(
                                AppLocalizations.of(context)!.translate('MyCards')!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.navigate_next,
                              color: kGrey400,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => My_Cards()),
                              );
                            },
                          ),
                          const Divider(
                            color: kGrey300,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.star_border,
                        color: kGrey400,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Transform(
                              transform: Matrix4.translationValues(-15, 0.0, 0.0),
                              child: Text(
                                AppLocalizations.of(context)!.translate('Savedflights')!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.navigate_next,
                              color: kGrey400,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Saved_Flights()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
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
              boxShadow: const [
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
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.help,
                        color: kGrey400,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Transform(
                              transform: Matrix4.translationValues(-15, 0.0, 0.0),
                              child: Text(
                                AppLocalizations.of(context)!.translate('CustomerSupport')!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.navigate_next,
                              color: kGrey400,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Customer_Support()),
                              );
                            },
                          ),
                          const Divider(
                            color: kGrey300,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.find_in_page,
                        color: kGrey400,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Transform(
                              transform: Matrix4.translationValues(-15, 0.0, 0.0),
                              child: Text(
                                AppLocalizations.of(context)!.translate('Followus')!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.navigate_next,
                              color: kGrey400,
                            ),
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => Add_Passenger()),
                              // );
                            },
                          ),
                          const Divider(
                            color: kGrey300,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.description,
                        color: kGrey400,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Transform(
                              transform: Matrix4.translationValues(-15, 0.0, 0.0),
                              child: Text(
                                AppLocalizations.of(context)!.translate('TermsConditions')!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.navigate_next,
                              color: kGrey400,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Terms_Conditions()),
                              );
                            },
                          ),
                          const Divider(
                            color: kGrey300,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.security,
                        color: kGrey400,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Transform(
                              transform: Matrix4.translationValues(-15, 0.0, 0.0),
                              child: Text(
                                AppLocalizations.of(context)!.translate('Guarantee')!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.navigate_next,
                              color: kGrey400,
                            ),
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => Add_Passenger()),
                              // );
                            },
                          ),
                          const Divider(
                            color: kGrey300,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    const Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.settings,
                        color: kGrey400,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Transform(
                              transform: Matrix4.translationValues(-15, 0.0, 0.0),
                              child: Text(
                                AppLocalizations.of(context)!.translate('Settings')!,
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            trailing: const Icon(
                              Icons.navigate_next,
                              color: kGrey400,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Settings()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
