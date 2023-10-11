import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/booking-1.dart';
import 'package:lywing/sizes_helpers.dart';

class Flight_Details extends StatefulWidget {
  @override
  _Flight_DetailsState createState() => _Flight_DetailsState();
}

class _Flight_DetailsState extends State<Flight_Details> {
  int _value = 1;
  bool save_flight = false;

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
            AppLocalizations.of(context).translate('FlightDetails'),
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
        // padding: EdgeInsets.only(
        //   bottom: 20,
        // ),
        width: displaySize(context).width,
        height: displaySize(context).height * 2,
        child: ListView(
          children: <Widget>[
            // Outbound
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    color: kBlue,
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            AppLocalizations.of(context).translate('Outbound'),
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '12h40m',
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                          color: kGrey300,
                          // spreadRadius: 6,
                          blurRadius: 10,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 15,
                      right: 15,
                    ),
                    width: displaySize(context).width,
                    child: Column(
                      children: <Widget>[
                        // Title of departure and destination locations
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // Diem di va diem den
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'HAN',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: Icon(
                                        MaterialIcons.flight_takeoff,
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'SIN',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Ngay thang
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: Icon(
                                        MaterialIcons.timelapse,
                                        color: kGrey600,
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Web, Mar 20',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kGrey500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Time started to go
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '9:30',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Icon(
                                        Icons.lens,
                                        color: kGrey400,
                                        size: 10,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'HAN Hanoi',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Noi Bai T2',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //flight
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.11,
                                child: Text(
                                  '1h50m',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: kGrey300,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Image(
                                  image: AssetImage(
                                      'assets/icons/linedown-flights.png'),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: kGrey100,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: kGrey100,
                                      width: 0,
                                    ),
                                  ),
                                  child: ExpansionCard(
                                    margin: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    // expandedColor: kGreenLight,
                                    leading: Image(
                                      image: AssetImage(
                                        'assets/images/VJ-1.png',
                                      ),
                                    ),
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Vietjet Air',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Airbus 320',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            //Connection info
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate(
                                                        'Connectioninfo'),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),

                                            //Flight no
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.flight,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Flightno'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'KE 690',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Operating carrier
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Image(
                                                          image: AssetImage(
                                                            'assets/images/VJ-1.png',
                                                          ),
                                                          width: 25,
                                                          height: 25,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Operatingcarrier'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Vietjet Air',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seating info
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate('Seatinginfo'),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),

                                            //Wifi on board
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.wifi,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Wifionboard'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat pitch
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatpitch'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '81 cm - 86 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat width
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatwidth'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '44 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat recline
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatrecline'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '7 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Audio & video on demand
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.audiotrack,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Audiovideoondemand'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          FontAwesomeIcons.plug,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Inseatpower'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'AC',
                                                    style: TextStyle(
                                                      fontSize: 11,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Arrival time
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '13:35',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Icon(
                                        Icons.lens,
                                        color: kGrey400,
                                        size: 10,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'DKM Bangkok',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Don Mueang T1',
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
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.12,
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/icons/Line-4.png',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: DottedBorder(
                                  padding: EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                    left: 15,
                                  ),
                                  color: kGrey300,
                                  strokeWidth: 1,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Icon(
                                          Icons.lens,
                                          color: kGrey400,
                                          size: 15,
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Text(
                                          '8h20 layover in Bangkok',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: kBlack,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Container(
                              // width:
                              // displaySize(context).width * 0.71,
                              //   child:
                              // ),
                            ],
                          ),
                        ),
                        //Time started to go
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '14:55',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Icon(
                                        Icons.lens,
                                        color: kGrey400,
                                        size: 10,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'DMK Bangkok',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Don Mueang T1',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //flight
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.11,
                                child: Text(
                                  '2h30m',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: kGrey300,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Image(
                                  image: AssetImage(
                                      'assets/icons/linedown-flights.png'),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: kGrey100,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: kGrey100,
                                      width: 0,
                                    ),
                                  ),
                                  child: ExpansionCard(
                                    margin: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    // expandedColor: kGreenLight,
                                    leading: Image(
                                      image: AssetImage(
                                        'assets/images/VJ-1.png',
                                      ),
                                    ),
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Vietjet Air',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Airbus 320',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            //Connection info
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate(
                                                        'Connectioninfo'),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),

                                            //Flight no
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.flight,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Flightno'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'KE 690',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Operating carrier
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Image(
                                                          image: AssetImage(
                                                            'assets/images/VJ-1.png',
                                                          ),
                                                          width: 25,
                                                          height: 25,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Operatingcarrier'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Vietjet Air',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seating info
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate('Seatinginfo'),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),

                                            //Wifi on board
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.wifi,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Wifionboard'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat pitch
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatpitch'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '81 cm - 86 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat width
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatwidth'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '44 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat recline
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatrecline'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '7 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Audio & video on demand
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.audiotrack,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Audiovideoondemand'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          FontAwesomeIcons.plug,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Inseatpower'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'AC',
                                                    style: TextStyle(
                                                      fontSize: 11,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Arrival time
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '17:35',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Icon(
                                        Icons.lens,
                                        color: kGrey400,
                                        size: 10,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'SIN Singgapore',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Changi T4',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
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
            //Inbound
            Container(
              margin: const EdgeInsets.only(
                top: 15,
                bottom: 15,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    color: kBlue,
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            AppLocalizations.of(context).translate('Inbound'),
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            '12h40m',
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                          color: kGrey300,
                          // spreadRadius: 6,
                          blurRadius: 10,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 15,
                      right: 15,
                    ),
                    width: displaySize(context).width,
                    child: Column(
                      children: <Widget>[
                        // Title of departure and destination locations
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // Diem di va diem den
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'HAN',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: Icon(
                                        MaterialIcons.flight_takeoff,
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'SIN',
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              //Ngay thang
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: Icon(
                                        MaterialIcons.timelapse,
                                        color: kGrey600,
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Web, Mar 20',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kGrey500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Time started to go
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '9:30',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Icon(
                                        Icons.lens,
                                        color: kGrey400,
                                        size: 10,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'HAN Hanoi',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Noi Bai T2',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //flight
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.11,
                                child: Text(
                                  '1h50m',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: kGrey300,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Image(
                                  image: AssetImage(
                                      'assets/icons/linedown-flights.png'),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: kGrey100,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: kGrey100,
                                      width: 0,
                                    ),
                                  ),
                                  child: ExpansionCard(
                                    margin: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    // expandedColor: kGreenLight,
                                    leading: Image(
                                      image: AssetImage(
                                        'assets/images/VJ-1.png',
                                      ),
                                    ),
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Vietjet Air',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Airbus 320',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            //Connection info
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate(
                                                        'Connectioninfo'),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),

                                            //Flight no
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.flight,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Flightno'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'KE 690',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Operating carrier
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Image(
                                                          image: AssetImage(
                                                            'assets/images/VJ-1.png',
                                                          ),
                                                          width: 25,
                                                          height: 25,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Operatingcarrier'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Vietjet Air',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seating info
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate('Seatinginfo'),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),

                                            //Wifi on board
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.wifi,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Wifionboard'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat pitch
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatpitch'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '81 cm - 86 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat width
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatwidth'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '44 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat recline
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatrecline'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '7 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Audio & video on demand
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.audiotrack,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Audiovideoondemand'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          FontAwesomeIcons.plug,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Inseatpower'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'AC',
                                                    style: TextStyle(
                                                      fontSize: 11,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Arrival time
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '13:35',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Icon(
                                        Icons.lens,
                                        color: kGrey400,
                                        size: 10,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'DKM Bangkok',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Don Mueang T1',
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
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.12,
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                ),
                                child: Image(
                                  image: AssetImage(
                                    'assets/icons/Line-4.png',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: DottedBorder(
                                  padding: EdgeInsets.only(
                                    top: 5,
                                    bottom: 5,
                                    left: 15,
                                  ),
                                  color: kGrey300,
                                  strokeWidth: 1,
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Icon(
                                          Icons.lens,
                                          color: kGrey400,
                                          size: 15,
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Text(
                                          '8h20 layover in Bangkok',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: kBlack,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // Container(
                              // width:
                              // displaySize(context).width * 0.71,
                              //   child:
                              // ),
                            ],
                          ),
                        ),
                        //Time started to go
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '14:55',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Icon(
                                        Icons.lens,
                                        color: kGrey400,
                                        size: 10,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'DMK Bangkok',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Don Mueang T1',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //flight
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: displaySize(context).width * 0.11,
                                child: Text(
                                  '2h30m',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: kGrey300,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  right: 10,
                                ),
                                child: Image(
                                  image: AssetImage(
                                      'assets/icons/linedown-flights.png'),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: kGrey100,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: kGrey100,
                                      width: 0,
                                    ),
                                  ),
                                  child: ExpansionCard(
                                    margin: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    // expandedColor: kGreenLight,
                                    leading: Image(
                                      image: AssetImage(
                                        'assets/images/VJ-1.png',
                                      ),
                                    ),
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Vietjet Air',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: kGrey500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            'Airbus 320',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                          right: 20,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            //Connection info
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate(
                                                        'Connectioninfo'),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),

                                            //Flight no
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.flight,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Flightno'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'KE 690',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Operating carrier
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Image(
                                                          image: AssetImage(
                                                            'assets/images/VJ-1.png',
                                                          ),
                                                          width: 25,
                                                          height: 25,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Operatingcarrier'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Vietjet Air',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seating info
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                AppLocalizations.of(context)
                                                    .translate('Seatinginfo'),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),

                                            //Wifi on board
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.wifi,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Wifionboard'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat pitch
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatpitch'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '81 cm - 86 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat width
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatwidth'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '44 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Seat recline
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .airline_seat_recline_extra,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Seatrecline'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    '7 cm',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            //Audio & video on demand
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.audiotrack,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Audiovideoondemand'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'Yes',
                                                    style: TextStyle(
                                                      fontSize: 11,
                                                      color: kGrey400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          FontAwesomeIcons.plug,
                                                          color: kGrey400,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                            left: 10,
                                                          ),
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)
                                                                .translate(
                                                                    'Inseatpower'),
                                                            style: TextStyle(
                                                              fontSize: 11,
                                                              color: kGrey400,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    'AC',
                                                    style: TextStyle(
                                                      fontSize: 11,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Arrival time
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: displaySize(context).width * 0.11,
                                      child: Text(
                                        '17:35',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 15,
                                        right: 15,
                                      ),
                                      child: Icon(
                                        Icons.lens,
                                        color: kGrey400,
                                        size: 10,
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'SIN Singgapore',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kBlack,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Changi T4',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: kGrey500,
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
            //go to know
            Container(
              decoration: BoxDecoration(
                color: kWhite,
                boxShadow: [
                  BoxShadow(
                    color: kGrey300,
                    // spreadRadius: 6,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      AppLocalizations.of(context).translate('Goodtoknown'),
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    height: 1,
                    decoration: BoxDecoration(
                      color: kBlack100,
                      border: Border.all(
                        width: 0,
                        color: kBlack100,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(
                            FontAwesomeIcons.history,
                            size: 30,
                            color: kGrey500,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Timezone'),
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '${AppLocalizations.of(context).translate('Between')} HaNoi ${AppLocalizations.of(context).translate('and')} Singapore',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 12,
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
            //Not ready to book yet?
            Container(
              margin: const EdgeInsets.only(
                top: 15,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                boxShadow: [
                  BoxShadow(
                    color: kGrey300,
                    // spreadRadius: 6,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      AppLocalizations.of(context).translate('Notready'),
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                      bottom: 15,
                    ),
                    height: 1,
                    decoration: BoxDecoration(
                      color: kBlack100,
                      border: Border.all(
                        width: 0,
                        color: kBlack100,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                save_flight = !save_flight;
                              });
                            },
                            child: save_flight
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
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(
                                  bottom: 3,
                                ),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Savethisflight'),
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('comebackandfindit'),
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 12,
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
            //book now
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
                          MaterialPageRoute(builder: (context) => Booking_1()),
                        );
                      },
                      child: Text(
                        AppLocalizations.of(context).translate('Booknow'),
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
