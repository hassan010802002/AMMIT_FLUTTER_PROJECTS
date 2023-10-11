import 'dart:math';
import 'dart:ui';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/overview.dart';
import 'package:lywing/screen/choose/passengers.dart';
import 'package:lywing/sizes_helpers.dart';

class Booking_1 extends StatefulWidget {
  @override
  _Booking_1State createState() => _Booking_1State();
}

class _Booking_1State extends State<Booking_1> {
  List name = ["Mr.Phong Van Tran", "Mr.Nguyen Nam Long"];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: InkWell(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: kWhite,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('Booking'),
            style: TextStyle(
              color: kWhite,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kBlue,
        ),
      ),
      bottomSheet: BottomAppBar(
        child: Container(
          height: displaySize(context).height * 0.08,
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
            left: 10,
            right: 10,
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
                offset: Offset(10, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        '\$122',
                        style: TextStyle(
                          fontSize: 17,
                          color: kBlack,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '${AppLocalizations.of(context).translate('Total')} (1 ${AppLocalizations.of(context).translate('adult')})',
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
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: kGreenLight,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    elevation: 0,
                    minimumSize: Size(
                      displaySize(context).width * 0.3,
                      displaySize(context).height * 0.05,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Overview()),
                    );
                  },
                  child: Text(
                    AppLocalizations.of(context).translate('Confirm'),
                    style: TextStyle(
                      fontSize: 15,
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: kGrey100,
        height: displaySize(context).height * 2,
        padding: EdgeInsets.only(
          bottom: 20,
        ),
        child: ListView(
          addAutomaticKeepAlives: false,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 0.0],
                  // 10% of the width, so there are ten blinds.
                  colors: [kBlue, kGrey100],
                  // red to yellow
                  tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(10),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'HAN',
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: displaySize(context).width * 0.2,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: kGrey300, width: 1),
                                  ),
                                ),
                                Container(
                                  child: Transform.rotate(
                                    angle: pi / 2,
                                    child: Icon(
                                      Icons.flight,
                                      color: kGrey500,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: displaySize(context).width * 0.2,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: kGrey300, width: 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              'SIN',
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Hanoi',
                              style: TextStyle(
                                color: kGrey300,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              '1 ${AppLocalizations.of(context).translate('stop')}',
                              style: TextStyle(
                                color: kGrey300,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Singapore',
                              style: TextStyle(
                                color: kGrey300,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Mar 25, ',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '9:35',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              '12h30m',
                              style: TextStyle(
                                color: kGrey300,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Mar 25, ',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '17:35',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
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
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Dash(
                        length: displaySize(context).width * 0.8,
                        dashThickness: 1,
                        dashGap: 1,
                        dashColor: kGrey300,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image(
                                    image: AssetImage('assets/images/VJ.png'),
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Text(
                                    'Vietjet Air',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Airbus 320',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: kGrey300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              'Economy',
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
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(color: kGrey300, width: 1),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'HAN',
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: displaySize(context).width * 0.2,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: kGrey300, width: 1),
                                  ),
                                ),
                                Container(
                                  child: Transform.rotate(
                                    angle: pi / 2,
                                    child: Icon(
                                      Icons.flight,
                                      color: kGrey500,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: displaySize(context).width * 0.2,
                                  height: 1,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: kGrey300, width: 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              'SIN',
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Hanoi',
                              style: TextStyle(
                                color: kGrey300,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 30,
                            ),
                            child: Text(
                              '1 ${AppLocalizations.of(context).translate('stop')}',
                              style: TextStyle(
                                color: kGrey300,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Singapore',
                              style: TextStyle(
                                color: kGrey300,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Mar 25, ',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '9:35',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 20,
                            ),
                            child: Text(
                              '12h30m',
                              style: TextStyle(
                                color: kGrey300,
                                fontSize: 11,
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'Mar 25, ',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '17:35',
                                    style: TextStyle(
                                      color: kGrey400,
                                      fontSize: 11,
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
                      margin: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Dash(
                        length: displaySize(context).width * 0.8,
                        dashThickness: 1,
                        dashGap: 1,
                        dashColor: kGrey300,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Image(
                                    image: AssetImage('assets/images/VJ.png'),
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Text(
                                    'Vietjet Air',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Airbus 320',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: kGrey300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Text(
                              'Economy',
                              style: TextStyle(
                                fontSize: 12,
                                color: kGrey400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Text(
                AppLocalizations.of(context).translate('Passengers'),
                style: TextStyle(
                  fontSize: 17,
                  color: kBlack,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  for (var index in name)
                    Card(
                      margin: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                left: displaySize(context).width * 0.03,
                              ),
                              width: displaySize(context).width,
                              height: displaySize(context).height * 0.13,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                child: DottedBorder(
                                                  padding:
                                                      const EdgeInsets.all(15),
                                                  color: kGrey300,
                                                  strokeWidth: 1,
                                                  borderType: BorderType.RRect,
                                                  radius: Radius.circular(12),
                                                  child: Icon(
                                                    Icons.person,
                                                    color: kGrey400,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        AppLocalizations.of(
                                                                context)
                                                            .translate(
                                                                'FullName'),
                                                        style: TextStyle(
                                                          fontSize: 11,
                                                          color: kGrey400,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        '$index',
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
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: displaySize(context).height * 0.065,
                                    left: displaySize(context).width * 0.76,
                                    child: Container(
                                      // alignment: Alignment.topLeft,
                                      // width: displaySize(context).width * 0.06,
                                      child: Ink(
                                        width:
                                            displaySize(context).width * 0.085,
                                        decoration: const ShapeDecoration(
                                          color: kGrey100,
                                          shape: CircleBorder(),
                                        ),
                                        child: IconButton(
                                          // padding: EdgeInsets.all(20),
                                          // alignment: Alignment.center,
                                          icon: Icon(
                                            MaterialIcons.close,
                                            size: 12,
                                          ),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                // top: 10,
                                bottom: 15,
                              ),
                              margin:
                                  const EdgeInsets.only(left: 15, right: 15),
                              child: Dash(
                                  length: displaySize(context).width * 0.8,
                                  dashThickness: 1,
                                  dashGap: 1,
                                  dashColor: kGrey400),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            AppLocalizations.of(context)
                                                .translate('Nationality'),
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Vietnam',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: kBlack,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            AppLocalizations.of(context)
                                                .translate('Dateofbirth'),
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            '15/04/1996',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: kBlack,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            AppLocalizations.of(context)
                                                .translate('Passport'),
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'D9641312',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: kBlack,
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
                              padding: const EdgeInsets.only(
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            AppLocalizations.of(context)
                                                .translate('Travelinsurance'),
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Travel Plus',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: kBlack,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            AppLocalizations.of(context)
                                                .translate('Bags'),
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  '1x',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: kBlack,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Row(
                                                  children: <Widget>[
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                        left: 3,
                                                        right: 3,
                                                      ),
                                                      child: Image(
                                                        image: AssetImage(
                                                            'assets/icons/bag-2.png'),
                                                      ),
                                                    ),
                                                    Text(
                                                      '56x32x36cm,',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: kBlack,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  '7kg',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: kBlack,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 20,
              ),
              child: DottedBorder(
                padding: const EdgeInsets.all(5),
                color: kGrey400,
                strokeWidth: 1,
                borderType: BorderType.RRect,
                radius: Radius.circular(12),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kGrey100,
                      elevation: 0,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        side: BorderSide(
                          width: 0.0,
                          color: kGrey100,
                        ),
                      ),
                      padding: const EdgeInsets.only(
                        top: 35,
                        bottom: 35,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Passengers()),
                      );
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            MaterialIcons.person_add,
                            color: kGrey500,
                            size: 60,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('AddaPassenger'),
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  color: kWhite,
                  width: 0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      AppLocalizations.of(context).translate('Contactdetails'),
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border.all(color: kGrey300, width: 1),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('Contactname'),
                            style: TextStyle(
                              fontSize: 11,
                              color: kGrey400,
                            ),
                          ),
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: kGrey500,
                                  ),
                                ),
                                hintText: 'eg. NGUYEN TIEN LINH'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('Phonenumber'),
                            style: TextStyle(
                              fontSize: 11,
                              color: kGrey400,
                            ),
                          ),
                        ),
                        Container(
                            child: IntlPhoneField(
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: kGrey500,
                              ),
                            ),
                            hintText: 'Enter phone number',
                          ),
                          initialCountryCode: 'VN',
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                        )
                            // Row(
                            //   children: <Widget>[
                            //     Container(
                            //       width: displaySize(context).width * 0.2,
                            //       child: TextField(
                            //         decoration: InputDecoration(
                            //             focusedBorder: UnderlineInputBorder(
                            //               borderSide: BorderSide(
                            //                 color: kGrey500,
                            //               ),
                            //             ),
                            //             hintText: '+84'),
                            //       ),
                            //     ),
                            //     Container(
                            //       margin: const EdgeInsets.only(
                            //         left: 10,
                            //       ),
                            //       width: displaySize(context).width * 0.68,
                            //       child: TextField(
                            //         decoration: InputDecoration(
                            //           focusedBorder: UnderlineInputBorder(
                            //             borderSide: BorderSide(
                            //               color: kGrey500,
                            //             ),
                            //           ),
                            //           hintText: AppLocalizations.of(context).translate('Enterphonenumber'),),
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('Emailaddress'),
                            style: TextStyle(
                              fontSize: 11,
                              color: kGrey400,
                            ),
                          ),
                        ),
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: kGrey500,
                                ),
                              ),
                              hintText: AppLocalizations.of(context)
                                  .translate('Emailtoreceivebookinginfo'),
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
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  color: kWhite,
                  width: 0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('Visarequirements'),
                      style: TextStyle(
                        fontSize: 17,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border.all(color: kGrey300, width: 1),
                    ),
                  ),
                  Container(
                    child: Text(
                      AppLocalizations.of(context).translate('textVisa'),
                      style: TextStyle(
                        fontSize: 13,
                        color: kGrey400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              margin: EdgeInsets.only(
                top: displaySize(context).height * 0.02,
                bottom: displaySize(context).height * 0.1,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  color: kWhite,
                  width: 0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      AppLocalizations.of(context).translate('Addpromotecode'),
                      style: TextStyle(
                        fontSize: 17,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border.all(color: kGrey300, width: 1),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('Promotecode'),
                            style: TextStyle(
                              fontSize: 11,
                              color: kGrey300,
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.6,
                                child: TextField(
                                  decoration: InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(10),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4)),
                                        borderSide: BorderSide(
                                          width: 1,
                                        )),
                                    hintText: AppLocalizations.of(context)
                                        .translate('Enterpromotecode'),
                                  ),
                                ),
                              ),
                              Container(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    primary: kBlue,
                                    elevation: 0,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                      side: BorderSide(
                                        width: 0.0,
                                        color: kBlue,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('Add'),
                                    style: TextStyle(
                                      color: kWhite,
                                      fontSize: 13,
                                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
