import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/confirm.dart';
import 'package:lywing/sizes_helpers.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
              color: kWhite,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('Payment'),
            style: TextStyle(
              color: kWhite,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kBlue,
        ),
      ),
      body: Container(
        height: displaySize(context).height * 3,
        padding: EdgeInsets.only(
          bottom: 20,
        ),
        color: kGrey100,
        child: ListView(
          children: <Widget>[
            // Thong tin chuyen di
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.5, 0.0],
                  colors: [kBlue, kGrey100],
                  tileMode: TileMode.repeated,
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
            //Tong so tien
            Container(
              margin: EdgeInsets.only(
                left: displaySize(context).width * 0.1,
                right: displaySize(context).width * 0.1,
                top: 1,
              ),
              // padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
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
              child: ExpansionTile(
                backgroundColor: kWhite,
                title: Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '${AppLocalizations.of(context).translate('Total')}:',
                        style: TextStyle(fontSize: 12, color: kGrey400),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: Text(
                          '\$112',
                          style: TextStyle(fontSize: 20, color: kBlack),
                        ),
                      ),
                    ],
                  ),
                ),
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x ${AppLocalizations.of(context).translate('Passengers')}',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$112.36',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x ${AppLocalizations.of(context).translate('Cabinbaggage')}',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Free',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x ${AppLocalizations.of(context).translate('Checkedbaggage')}',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$7.23',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x ${AppLocalizations.of(context).translate('Travelinsurance')}',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$7.46',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x ${AppLocalizations.of(context).translate('AirHelp+')}',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$5.56',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x ${AppLocalizations.of(context).translate('Plusservicepackage')}',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$11.35',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            '1 x ${AppLocalizations.of(context).translate('Passengers')}',
                            style: TextStyle(
                              color: kGrey400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '\$112.36',
                            style: TextStyle(
                              color: kBlack,
                              fontSize: 13,
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
                    margin: EdgeInsets.only(
                      left: 15,
                      right: 15,
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '${AppLocalizations.of(context).translate('Total')}:',
                          style: TextStyle(fontSize: 12, color: kGrey400),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            '\$112',
                            style: TextStyle(fontSize: 20, color: kBlack),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Credit card
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 10,
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
                      AppLocalizations.of(context).translate('Creditcard'),
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
                  //Card Holder
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('CardHolder'),
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
                  //Card Number
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            AppLocalizations.of(context)
                                .translate('CardNumber'),
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
                              hintText: '0000 - 0000 - 0000 - 0000',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Expiry date and CVC
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    child: Row(
                      children: <Widget>[
                        //Expiry date
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1.0,
                                  color: kGrey500,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    AppLocalizations.of(context)
                                        .translate('Expirydate'),
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
                                      hintText: 'mm / yy',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //CVC
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1.0,
                                  color: kGrey500,
                                ),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    'CVC',
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
                                      hintText: '---',
                                    ),
                                  ),
                                ),
                              ],
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
                bottom: displaySize(context).height * 0.1,
                left: displaySize(context).width * 0.02,
                right: displaySize(context).width * 0.02,
              ),
              padding: const EdgeInsets.all(15),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: kGrey300,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 0,
                  color: kGrey300,
                ),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Image(
                      image: AssetImage(
                        'assets/icons/credit-card.png',
                      ),
                      width: 30,
                      height: 30,
                    ),
                  ),
                  Container(
                    width: displaySize(context).width * 0.7,
                    margin: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate('Yourcard'),
                      style: TextStyle(
                        fontSize: 12,
                        color: kGrey600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        child: Container(
          height: displaySize(context).height * 0.08,
          padding: const EdgeInsets.all(10),
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
                      MaterialPageRoute(builder: (context) => Confirm()),
                    );
                  },
                  child: Text(
                    AppLocalizations.of(context).translate('Paynow'),
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
    );
  }
}
