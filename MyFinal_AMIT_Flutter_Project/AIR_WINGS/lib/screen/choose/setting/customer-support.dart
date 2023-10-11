import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'FAQs.dart';
import 'contact-number.dart';

class Customer_Support extends StatefulWidget {
  @override
  _Customer_SupportState createState() => _Customer_SupportState();
}

class _Customer_SupportState extends State<Customer_Support> {
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
            AppLocalizations.of(context).translate('CustomerSupport'),
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
          //Service Chat
          Container(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 30,
              left: 20,
              right: 20,
            ),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 0.0,
                color: kWhite,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  // spreadRadius: 6,
                  blurRadius: 15,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).translate('ServiceChat'),
                        style: TextStyle(
                          fontSize: 17,
                          color: kBlack,
                        ),
                      ),
                      Text(
                        '7:00 - 21:00 (GTM+8), 7 Days a Week',
                        style: TextStyle(
                          fontSize: 12,
                          color: kGrey400,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Icon(
                    FontAwesomeIcons.headset,
                    color: kGrey500,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),

          //Email Us
          Container(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 30,
              left: 20,
              right: 20,
            ),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 0.0,
                color: kWhite,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  // spreadRadius: 6,
                  blurRadius: 15,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context).translate('EmailUs'),
                        style: TextStyle(
                          fontSize: 17,
                          color: kBlack,
                        ),
                      ),
                      Text(
                        'support@lywing.com',
                        style: TextStyle(
                          fontSize: 12,
                          color: kGrey400,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Icon(
                    MaterialIcons.drafts,
                    color: kGrey500,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),

          //United State and Vietnam
          Container(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 30,
              left: 20,
              right: 20,
            ),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 0.0,
                color: kWhite,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  // spreadRadius: 6,
                  blurRadius: 15,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                //United State
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              AppLocalizations.of(context)
                                  .translate('UnitedState'),
                              style: TextStyle(
                                fontSize: 12,
                                color: kGrey400,
                              ),
                            ),
                            Text(
                              '+1 202 844 4159',
                              style: TextStyle(
                                fontSize: 15,
                                color: kBlack,
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context)
                                  .translate('Supportavailablein'),
                              style: TextStyle(
                                fontSize: 12,
                                color: kGrey400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Icon(
                          MaterialIcons.phone_in_talk,
                          color: kGrey500,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: Divider(
                    color: kGrey300,
                    height: 1,
                  ),
                ),

                //Vietnam
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Vietnam',
                              style: TextStyle(
                                fontSize: 12,
                                color: kGrey400,
                              ),
                            ),
                            Text(
                              '+84 444583392',
                              style: TextStyle(
                                fontSize: 15,
                                color: kBlack,
                              ),
                            ),
                            Text(
                              AppLocalizations.of(context)
                                  .translate('Supportavailablein'),
                              style: TextStyle(
                                fontSize: 12,
                                color: kGrey400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Icon(
                          MaterialIcons.phone_in_talk,
                          color: kGrey500,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: Divider(
                    color: kGrey300,
                    height: 1,
                  ),
                ),

                //Other countries and regions
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Contact_Numbers()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context)
                              .translate('Othercountriesandregions'),
                          style: TextStyle(
                            fontSize: 15,
                            color: kBlack,
                          ),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: kGrey500,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //FAQ
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 0.0,
                color: kWhite,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  // spreadRadius: 6,
                  blurRadius: 15,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FAQs()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'FAQ',
                    style: TextStyle(
                      fontSize: 15,
                      color: kBlack,
                    ),
                  ),
                  Icon(
                    Icons.navigate_next,
                    color: kGrey500,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
