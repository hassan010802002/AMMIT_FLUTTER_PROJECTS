import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/payment.dart';
import 'package:lywing/sizes_helpers.dart';

class Overview extends StatefulWidget {
  @override
  _OverviewState createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  List name = ["Mr.Phong Van Tran", "Mr.Nguyen Nam Long"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 3.0,
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
            AppLocalizations.of(context).translate('Overview'),
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            //Thong tin chuyen bay
            Container(
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 20,
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
                  // Dia diem den va di
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
                                  border: Border.all(color: kGrey300, width: 1),
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
                                  border: Border.all(color: kGrey300, width: 1),
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

                  // Quoc gia
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

                  // Ngay gio
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

                  // Hang bay
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

                  // Diem di va den
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
                                  border: Border.all(color: kGrey300, width: 1),
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
                                  border: Border.all(color: kGrey300, width: 1),
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

                  // Quoc gia
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

                  // Ngay gio
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

                  // Hang bay
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

            // Tieu de
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
                                top: displaySize(context).height * 0.01,
                                bottom: displaySize(context).height * 0.02,
                                left: displaySize(context).width * 0.02,
                                right: displaySize(context).width * 0.02,
                              ),
                              width: displaySize(context).width,
                              height: displaySize(context).height * 0.11,
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
                                    bottom: displaySize(context).height * 0.03,
                                    left: displaySize(context).width * 0.78,
                                    child: Container(
                                      // alignment: Alignment.topLeft,
                                      width: displaySize(context).width * 0.07,
                                      child: Ink(
                                        decoration: const ShapeDecoration(
                                          color: kGrey100,
                                          shape: CircleBorder(),
                                        ),
                                        child: IconButton(
                                          icon: Image.asset(
                                              'assets/icons/close.png'),
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

            //Button check
            Container(
              margin: const EdgeInsets.only(
                top: 50,
              ),
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
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          MaterialPageRoute(builder: (context) => Payment()),
                        );
                      },
                      child: Text(
                        AppLocalizations.of(context).translate('Checkout'),
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
          ],
        ),
      ),
    );
  }
}
