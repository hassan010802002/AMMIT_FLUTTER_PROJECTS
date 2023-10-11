import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
            AppLocalizations.of(context).translate('Notifications'),
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          actions: <Widget>[
            Container(
              child: IconButton(
                icon: Icon(
                  MaterialIcons.done,
                  color: kBlack,
                ),
                onPressed: () {},
              ),
            ),
          ],
          backgroundColor: kWhite,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              MaterialIcons.confirmation_number,
                              color: kBlue,
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 15,
                              ),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('Flighttickethasbeenissued'),
                                style: TextStyle(fontSize: 15, color: kBlack),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          '2h ago',
                          style: TextStyle(
                            fontSize: 12,
                            color: kGrey400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Divider(
                    height: 2,
                    color: kGrey100,
                  ),
                ),
                Container(
                  child: Text(
                    AppLocalizations.of(context).translate('Yourflightticket'),
                    style: TextStyle(
                      fontSize: 13,
                      color: kBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              MaterialIcons.alarm,
                              color: kBlue,
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 15,
                              ),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('Flightis'),
                                style: TextStyle(fontSize: 15, color: kBlack),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          '3h ago',
                          style: TextStyle(
                            fontSize: 12,
                            color: kGrey400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Divider(
                    height: 2,
                    color: kGrey100,
                  ),
                ),
                Container(
                  child: Text(
                    AppLocalizations.of(context).translate('Yourflight'),
                    style: TextStyle(
                      fontSize: 13,
                      color: kBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: kGrey100,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1,
                color: kGrey300,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.cloudShowersHeavy,
                              color: kGrey500,
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 15,
                              ),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('Itrains'),
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kGrey500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          '3h ago',
                          style: TextStyle(
                            fontSize: 12,
                            color: kGrey500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                ),
                Container(
                  child: Text(
                    AppLocalizations.of(context).translate('TheHanoiNoiBai'),
                    style: TextStyle(
                      fontSize: 13,
                      color: kGrey500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            padding: const EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: 20,
            ),
            decoration: BoxDecoration(
              color: kGrey100,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1,
                color: kGrey300,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.cloudShowersHeavy,
                              color: kGrey500,
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 15,
                              ),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('Itrains'),
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kGrey500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(
                          '12d ago',
                          style: TextStyle(
                            fontSize: 12,
                            color: kGrey500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                ),
                Container(
                  child: Text(
                    AppLocalizations.of(context).translate('TheHanoiNoiBai'),
                    style: TextStyle(
                      fontSize: 13,
                      color: kGrey500,
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
