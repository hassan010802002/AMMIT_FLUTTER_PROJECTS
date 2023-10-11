import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Notification_Settings extends StatefulWidget {
  @override
  _Notification_SettingsState createState() => _Notification_SettingsState();
}

class _Notification_SettingsState extends State<Notification_Settings> {
  bool _receive_notifications = false;
  bool _discounts_recommendations = false;
  bool _travel_tips_reminders = false;
  bool _surveys_more = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                // spreadRadius: 6,
                blurRadius: 15,
                offset: Offset(0, 0),
              ),
            ],
          ),
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
              "Notification Settings",
              style: TextStyle(
                color: kBlack,
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
            backgroundColor: kWhite,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.05,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
                color: kWhite,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      bottom: displaySize(context).height * 0.01,
                      left: displaySize(context).width * 0.04),
                  child: Text(
                    "PUSH NOTIFICATIONS",
                    style: TextStyle(
                      fontSize: 13,
                      color: kGrey600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: displaySize(context).height * 0.02,
                    bottom: displaySize(context).height * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: kWhite,
                    boxShadow: [
                      BoxShadow(
                        color: kGrey300,
                        // spreadRadius: 6,
                        blurRadius: 15,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text(
                      "Receive Notifications",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    subtitle: Text(
                      "Turn on push notifications to receive discount, secret deals, essential travel info and more.",
                      style: TextStyle(
                        fontSize: 13,
                        color: kGrey400,
                      ),
                    ),
                    trailing: CupertinoSwitch(
                      value: _receive_notifications,
                      onChanged: (value) {
                        setState(() {
                          _receive_notifications = value;
                        });
                      },
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
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
                color: kWhite,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      bottom: displaySize(context).height * 0.01,
                      left: displaySize(context).width * 0.04),
                  child: Text(
                    "EMAIL UPDATES",
                    style: TextStyle(
                      fontSize: 13,
                      color: kGrey600,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          top: displaySize(context).height * 0.02,
                          bottom: displaySize(context).height * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: kWhite,
                        ),
                        child: ListTile(
                          title: Text(
                            "Discounts & Recommendations",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          subtitle: Text(
                            "Limited-time promotions, travel recommendations, discount and promo code",
                            style: TextStyle(
                              fontSize: 13,
                              color: kGrey400,
                            ),
                          ),
                          trailing: CupertinoSwitch(
                            value: _discounts_recommendations,
                            onChanged: (value) {
                              setState(() {
                                _discounts_recommendations = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: displaySize(context).height * 0.02,
                          bottom: displaySize(context).height * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: kWhite,
                        ),
                        child: ListTile(
                          title: Text(
                            "Travel Tips & Reminders",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          subtitle: Text(
                            "Turn on push notifications to receive discount, secret deals, essential travel info and more.Useful travel info, check-in reminders and other helpful tips",
                            style: TextStyle(
                              fontSize: 13,
                              color: kGrey400,
                            ),
                          ),
                          trailing: CupertinoSwitch(
                            value: _travel_tips_reminders,
                            onChanged: (value) {
                              setState(() {
                                _travel_tips_reminders = value;
                              });
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: displaySize(context).height * 0.02,
                          bottom: displaySize(context).height * 0.02,
                        ),
                        decoration: BoxDecoration(
                          color: kWhite,
                        ),
                        child: ListTile(
                          title: Text(
                            "Surveys & More",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          subtitle: Text(
                            "Turn on push notifications to receive discount, secret deals, essential travel info and more.Receive surveys, review invitations and more",
                            style: TextStyle(
                              fontSize: 13,
                              color: kGrey400,
                            ),
                          ),
                          trailing: CupertinoSwitch(
                            value: _surveys_more,
                            onChanged: (value) {
                              setState(() {
                                _surveys_more = value;
                              });
                            },
                          ),
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
