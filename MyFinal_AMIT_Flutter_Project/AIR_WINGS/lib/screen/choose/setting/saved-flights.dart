import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Saved_Flights extends StatefulWidget {
  @override
  _Saved_FlightsState createState() => _Saved_FlightsState();
}

class _Saved_FlightsState extends State<Saved_Flights> {
  List city = [
    "HaNoi",
    "HaNoi",
    "HaNoi",
    "HaNoi",
  ];

  List<bool> save_flight;

  @override
  void initState() {
    super.initState();
    save_flight = List<bool>.filled(city.length, false);
  }

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
            'Saved Flights',
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: ListView.builder(
        itemCount: city.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 20,
              bottom: 15,
            ),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 0.1,
                color: kGrey100,
              ),
              boxShadow: [
                BoxShadow(
                  color: kGrey100,
                  // spreadRadius: 6,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                bottom: 5,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      city[index],
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      '${AppLocalizations.of(context).translate('from')} Singapore',
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
                              child: Text(
                                'Monday, Mar 20 - Wednesday, Mar 25',
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
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              save_flight[index] = !save_flight[index];
                            });
                          },
                          child: save_flight[index] == true
                              ? Icon(
                                  FontAwesome5Solid.star,
                                  size: 30.0,
                                  color: kGrey500,
                                )
                              : Icon(
                                  FontAwesome5Solid.star,
                                  size: 30.0,
                                  color: kBlue,
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: displaySize(context).height * 0.05,
                  child: Image(
                    image: AssetImage('assets/icons/Line-3.png'),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //logo
                      Container(
                        child: Image(
                            image: AssetImage('assets/images/VJ-1.png'),
                            width: displaySize(context).width * 0.11,
                            height: displaySize(context).height * 0.05,
                            fit: BoxFit.fill),
                      ),

                      Container(
                        width: displaySize(context).width * 0.35,
                        // height: displaySize(context).height * 0.06,
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  //flight time
                                  Container(
                                    child: Text(
                                      '9:35',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),

                                  Container(
                                    child: Transform.rotate(
                                      angle: pi / 2,
                                      child: Icon(
                                        Icons.flight,
                                        color: kYellow,
                                      ),
                                    ),
                                  ),

                                  //landing time
                                  Container(
                                    child: Text(
                                      '13:35',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //airline
                            Container(
                              child: Text(
                                'SIN -HAN, Vietjet Ari',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kGrey300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //direct flight, 3h 20m
                      Container(
                        width: displaySize(context).width * 0.3,
                        // height: displaySize(context).height * 0.1,
                        padding: const EdgeInsets.only(
                          top: 6,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('directflight'),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kGrey500,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                '3h 20m',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kGrey300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: displaySize(context).height * 0.02,
                    bottom: displaySize(context).height * 0.02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //logo
                      Container(
                        child: Image(
                            image: AssetImage('assets/images/VJ-1.png'),
                            width: displaySize(context).width * 0.11,
                            height: displaySize(context).height * 0.05,
                            fit: BoxFit.fill),
                      ),

                      Container(
                        width: displaySize(context).width * 0.35,
                        // height: displaySize(context).height * 0.06,
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  //flight time
                                  Container(
                                    child: Text(
                                      '14:55',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),

                                  Container(
                                    child: Transform.rotate(
                                      angle: pi / 2,
                                      child: Icon(
                                        Icons.flight,
                                        color: kYellow,
                                      ),
                                    ),
                                  ),

                                  //landing time
                                  Container(
                                    child: Text(
                                      '17:20',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //airline
                            Container(
                              child: Text(
                                'SIN -HAN, Vietjet Ari',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kGrey300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //direct flight, 3h 20m
                      Container(
                        width: displaySize(context).width * 0.3,
                        // height: displaySize(context).height * 0.05,
                        padding: const EdgeInsets.only(top: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('directflight'),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kGrey500,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                '3h 20m',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kGrey300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // height: displaySize(context).height * 0.03,
                  margin: EdgeInsets.only(
                    bottom: displaySize(context).height * 0.02,
                  ),
                  child: Image(
                    image: AssetImage('assets/icons/Line-3.png'),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          '12 nights ${AppLocalizations.of(context).translate('in')} Singapore',
                          style: TextStyle(
                            fontSize: 12,
                            color: kGrey300,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          '\$112',
                          style: TextStyle(
                            fontSize: 17,
                            color: kBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
