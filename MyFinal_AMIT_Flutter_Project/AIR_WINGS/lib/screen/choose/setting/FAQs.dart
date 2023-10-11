import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/setting/booking.dart';
import 'package:lywing/sizes_helpers.dart';

import 'popular-topics.dart';

class FAQs extends StatefulWidget {
  @override
  _FAQsState createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
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
            "FAQs",
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
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          AppLocalizations.of(context)
                              .translate('PopularTopcis'),
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Popular_Topics()),
                            );
                          },
                          child: Icon(
                            Icons.navigate_next,
                            color: kGrey500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Divider(
                          height: 3,
                          color: kGrey400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          AppLocalizations.of(context).translate('Booking'),
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Booking()),
                            );
                          },
                          child: Icon(
                            Icons.navigate_next,
                            color: kGrey500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Divider(
                          height: 3,
                          color: kGrey400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          AppLocalizations.of(context).translate('Baggage'),
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.navigate_next,
                            color: kGrey500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Divider(
                          height: 3,
                          color: kGrey400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          AppLocalizations.of(context)
                              .translate('Price&Payment'),
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.navigate_next,
                            color: kGrey500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Divider(
                          height: 3,
                          color: kGrey400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          AppLocalizations.of(context)
                              .translate('Change&Cancel'),
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Booking()),
                            );
                          },
                          child: Icon(
                            Icons.navigate_next,
                            color: kGrey500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Divider(
                          height: 3,
                          color: kGrey400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          AppLocalizations.of(context).translate('Searching'),
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Booking()),
                            );
                          },
                          child: Icon(
                            Icons.navigate_next,
                            color: kGrey500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Divider(
                          height: 3,
                          color: kGrey400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          AppLocalizations.of(context)
                              .translate('AdditionalServices'),
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Booking()),
                            );
                          },
                          child: Icon(
                            Icons.navigate_next,
                            color: kGrey500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Divider(
                          height: 3,
                          color: kGrey400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          AppLocalizations.of(context)
                              .translate('Check-in&documents'),
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Booking()),
                            );
                          },
                          child: Icon(
                            Icons.navigate_next,
                            color: kGrey500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Divider(
                          height: 3,
                          color: kGrey400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          AppLocalizations.of(context)
                              .translate('Duringthetrip'),
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Booking()),
                            );
                          },
                          child: Icon(
                            Icons.navigate_next,
                            color: kGrey500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Divider(
                          height: 3,
                          color: kGrey400,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          AppLocalizations.of(context).translate('Refund'),
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Booking()),
                            );
                          },
                          child: Icon(
                            Icons.navigate_next,
                            color: kGrey500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Divider(
                          height: 3,
                          color: kGrey400,
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
