import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/choose-filter/nonstop.dart';
import 'package:lywing/screen/choose/class.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

import 'airports.dart';
import 'carriers.dart';
import 'choose-filter/any.dart';
import 'exclude_countries.dart';
import 'plane_model.dart';
import 'stopover_city.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  double _currentSliderValue1 = 1;
  double _currentSliderValue2 = 1;
  double _currentSliderValue3 = 1;
  var _currentSliderValue4 = RangeValues(1, 24);
  var _currentSliderValue5 = RangeValues(1, 24);
  var _currentSliderValue6 = RangeValues(1, 24);
  var _currentSliderValue7 = RangeValues(1, 24);

  bool monVal = false;

  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
              AppLocalizations.of(context).translate('Filter'),
              style: TextStyle(
                color: kBlack,
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
            actions: <Widget>[
              Container(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: kWhite,
                      elevation: 0,
                    ).merge(
                      ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed))
                            return kWhite;
                          return null; // Defer to the widget's default.
                        }),
                      ),
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate('Done'),
                      style: TextStyle(
                        fontSize: 17,
                        color: kBlack,
                      ),
                    ),
                  )),
            ],
            backgroundColor: kWhite,
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: displaySize(context).height * 0.1,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.02,
                      bottom: displaySize(context).height * 0.01,
                      left: displaySize(context).width * 0.02,
                      right: displaySize(context).width * 0.02,
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate('Stops'),
                      style: TextStyle(
                        fontSize: 17,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.01,
                      left: displaySize(context).width * 0.02,
                      right: displaySize(context).width * 0.02,
                    ),
                    height: displaySize(context).height * 0.06,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            right: 15,
                          ),
                          child: GestureDetector(
                            onTap: () => setState(() => _value = 0),
                            child: Container(
                              width: displaySize(context).width * 0.30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: _value == 0 ? kBlue : kWhite,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 1,
                                  color: kBlue,
                                ),
                              ),
                              child: Text(
                                AppLocalizations.of(context).translate('Any'),
                                style: TextStyle(
                                  color: _value == 0 ? kWhite : kBlue,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: displaySize(context).width * 0.30,
                          margin: const EdgeInsets.only(
                            right: 15,
                          ),
                          child: GestureDetector(
                            onTap: () => setState(() => _value = 1),
                            child: Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                color: _value == 1 ? kBlue : kWhite,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 1,
                                  color: kBlue,
                                ),
                              ),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('Nonstop'),
                                style: TextStyle(
                                  color: _value == 1 ? kWhite : kBlue,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 15,
                          ),
                          child: GestureDetector(
                            onTap: () => setState(() => _value = 2),
                            child: Container(
                              width: displaySize(context).width * 0.30,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                color: _value == 2 ? kBlue : kWhite,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 1,
                                  color: kBlue,
                                ),
                              ),
                              child: Text(
                                AppLocalizations.of(context).translate('Stops'),
                                style: TextStyle(
                                  color: _value == 2 ? kWhite : kBlue,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 15,
                          ),
                          child: GestureDetector(
                            onTap: () => setState(() => _value = 3),
                            child: Container(
                              width: displaySize(context).width * 0.30,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                color: _value == 3 ? kBlue : kWhite,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 1,
                                  color: kBlue,
                                ),
                              ),
                              child: Text(
                                AppLocalizations.of(context).translate('1Stop'),
                                style: TextStyle(
                                  color: _value == 3 ? kWhite : kBlue,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 15,
                          ),
                          child: GestureDetector(
                            onTap: () => setState(() => _value = 4),
                            child: Container(
                              width: displaySize(context).width * 0.35,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                              ),
                              decoration: BoxDecoration(
                                color: _value == 4 ? kBlue : kWhite,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 1,
                                  color: kBlue,
                                ),
                              ),
                              child: Text(
                                AppLocalizations.of(context).translate('2Stop'),
                                style: TextStyle(
                                  color: _value == 4 ? kWhite : kBlue,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: kWhite,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Duration'),
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        AppLocalizations.of(context)
                                            .translate('maxTravelTime'),
                                        style: TextStyle(
                                          color: kBlack,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              Text(
                                                AppLocalizations.of(context)
                                                    .translate('upTo'),
                                                style: TextStyle(
                                                  color: kGrey500,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 3,
                                                  right: 3,
                                                ),
                                                child: Text(
                                                  '${_currentSliderValue1.toInt()}',
                                                  style: TextStyle(
                                                    color: kGrey500,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                AppLocalizations.of(context)
                                                    .translate('hours'),
                                                style: TextStyle(
                                                  color: kGrey500,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                              left: 20,
                                            ),
                                            child: Text(
                                              '(309 of 412 flights)',
                                              style: TextStyle(
                                                color: kGrey300,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Slider(
                                        inactiveColor: kGrey100,
                                        activeColor: kBlue,
                                        value: _currentSliderValue1,
                                        min: 0,
                                        max: 412,
                                        label: _currentSliderValue1
                                            .round()
                                            .toString(),
                                        onChanged: (double value) {
                                          setState(() {
                                            _currentSliderValue1 = value;
                                          });
                                        },
                                      ),
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
                                            .translate('Stopover'),
                                        style: TextStyle(
                                          color: kBlack,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            '${_currentSliderValue2.toInt()}',
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Text(
                                            AppLocalizations.of(context)
                                                .translate('25Hours'),
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Slider(
                                        inactiveColor: kGrey100,
                                        activeColor: kBlue,
                                        value: _currentSliderValue2,
                                        min: 1,
                                        max: 25,
                                        label: _currentSliderValue2
                                            .round()
                                            .toString(),
                                        onChanged: (double value) {
                                          setState(() {
                                            _currentSliderValue2 = value;
                                          });
                                        },
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
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: kWhite,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Price'),
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: [
                                          Text(
                                            '${_currentSliderValue3.toInt()}đ',
                                            style: TextStyle(
                                              color: kBlack,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Text(
                                            ' - 8.000.000đ',
                                            style: TextStyle(
                                              color: kBlack,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Slider(
                                        inactiveColor: kGrey100,
                                        activeColor: kBlue,
                                        value: _currentSliderValue3,
                                        min: 1,
                                        max: 8000000,
                                        label: _currentSliderValue3
                                            .round()
                                            .toString(),
                                        onChanged: (double value) {
                                          setState(() {
                                            _currentSliderValue3 = value;
                                          });
                                        },
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
                            top: displaySize(context).height * 0.03,
                            bottom: displaySize(context).height * 0.03,
                          ),
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: kWhite,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Bags'),
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
                                child: ListTile(
                                  leading: Checkbox(
                                    value: monVal,
                                    onChanged: (bool value) {
                                      setState(() {
                                        monVal = value;
                                      });
                                    },
                                  ),
                                  title: Container(
                                    // width: displaySize(context).width * 0.9,
                                    child: Text(
                                      AppLocalizations.of(context).translate(
                                          'includeFlightsWithoutCheckedBaggage'),
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: kGrey500,
                                      ),
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
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: kWhite,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Departuretime'),
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        AppLocalizations.of(context)
                                            .translate('Departuretime'),
                                        style: TextStyle(
                                          color: kBlack,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '${_currentSliderValue4.start.toInt()}' +
                                                ":00",
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 3,
                                              right: 3,
                                            ),
                                            child: Text(
                                              "-",
                                              style: TextStyle(
                                                color: kGrey500,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '${_currentSliderValue4.end.toInt()}' +
                                                ":00",
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: RangeSlider(
                                        inactiveColor: kGrey100,
                                        activeColor: kBlue,
                                        // divisions: 24,
                                        values: _currentSliderValue4,
                                        labels: RangeLabels(
                                          _currentSliderValue4.start
                                              .round()
                                              .toString(),
                                          _currentSliderValue4.end
                                              .round()
                                              .toString(),
                                        ),
                                        min: 1,
                                        max: 24,
                                        onChanged: (RangeValues values) {
                                          setState(() {
                                            _currentSliderValue4 = values;
                                          });
                                        },
                                      ),
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
                                            .translate('Arrivaltime'),
                                        style: TextStyle(
                                          color: kBlack,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '${_currentSliderValue5.start.toInt()}' +
                                                ":00",
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 3,
                                              right: 3,
                                            ),
                                            child: Text(
                                              "-",
                                              style: TextStyle(
                                                color: kGrey500,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '${_currentSliderValue5.end.toInt()}' +
                                                ":00",
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: RangeSlider(
                                        inactiveColor: kGrey100,
                                        activeColor: kBlue,
                                        // divisions: 24,
                                        values: _currentSliderValue5,
                                        labels: RangeLabels(
                                          _currentSliderValue5.start
                                              .round()
                                              .toString(),
                                          _currentSliderValue5.end
                                              .round()
                                              .toString(),
                                        ),
                                        min: 1,
                                        max: 24,
                                        onChanged: (RangeValues values) {
                                          setState(() {
                                            _currentSliderValue5 = values;
                                          });
                                        },
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
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                            top: 10,
                            bottom: 10,
                          ),
                          decoration: BoxDecoration(
                            color: kWhite,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Returntime'),
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        AppLocalizations.of(context)
                                            .translate('Departuretime'),
                                        style: TextStyle(
                                          color: kBlack,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '${_currentSliderValue6.start.toInt()}' +
                                                ":00",
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 3,
                                              right: 3,
                                            ),
                                            child: Text(
                                              "-",
                                              style: TextStyle(
                                                color: kGrey500,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '${_currentSliderValue6.end.toInt()}' +
                                                ":00",
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: RangeSlider(
                                        inactiveColor: kGrey100,
                                        activeColor: kBlue,
                                        // divisions: 24,
                                        values: _currentSliderValue6,
                                        labels: RangeLabels(
                                          _currentSliderValue6.start
                                              .round()
                                              .toString(),
                                          _currentSliderValue6.end
                                              .round()
                                              .toString(),
                                        ),
                                        min: 1,
                                        max: 24,
                                        onChanged: (RangeValues values) {
                                          setState(() {
                                            _currentSliderValue6 = values;
                                          });
                                        },
                                      ),
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
                                            .translate('Arrivaltime'),
                                        style: TextStyle(
                                          color: kBlack,
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text(
                                            '${_currentSliderValue7.start.toInt()}' +
                                                ":00",
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 3,
                                              right: 3,
                                            ),
                                            child: Text(
                                              "-",
                                              style: TextStyle(
                                                color: kGrey500,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '${_currentSliderValue7.end.toInt()}' +
                                                ":00",
                                            style: TextStyle(
                                              color: kGrey500,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: RangeSlider(
                                        inactiveColor: kGrey100,
                                        activeColor: kBlue,
                                        // divisions: 24,
                                        values: _currentSliderValue7,
                                        labels: RangeLabels(
                                          _currentSliderValue7.start
                                              .round()
                                              .toString(),
                                          _currentSliderValue7.end
                                              .round()
                                              .toString(),
                                        ),
                                        min: 1,
                                        max: 24,
                                        onChanged: (RangeValues values) {
                                          setState(() {
                                            _currentSliderValue7 = values;
                                          });
                                        },
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
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.05,
                      bottom: displaySize(context).height * 0.05,
                    ),
                    decoration: BoxDecoration(
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          // spreadRadius: 6,
                          blurRadius: 15,
                          offset: Offset(15, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(
                                  AppLocalizations.of(context)
                                      .translate('Carriers'),
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: kBlack,
                                  ),
                                ),
                                subtitle: Text(
                                  "Any",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kGrey400,
                                  ),
                                ),
                                trailing: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Carriers()),
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
                                  height: 1,
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
                                title: Text(
                                  AppLocalizations.of(context)
                                      .translate('Airports'),
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: kBlack,
                                  ),
                                ),
                                subtitle: Text(
                                  "Any",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kGrey400,
                                  ),
                                ),
                                trailing: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Airports()),
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
                                  height: 1,
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
                                title: Text(
                                  AppLocalizations.of(context)
                                      .translate('Class'),
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: kBlack,
                                  ),
                                ),
                                subtitle: Text(
                                  "Economy/Premium",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kGrey400,
                                  ),
                                ),
                                trailing: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Class()),
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
                                  height: 1,
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
                                title: Text(
                                  AppLocalizations.of(context)
                                      .translate('StopoverCity'),
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: kBlack,
                                  ),
                                ),
                                subtitle: Text(
                                  "Any",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kGrey400,
                                  ),
                                ),
                                trailing: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Stopover_City()),
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
                                  height: 1,
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
                                title: Text(
                                  AppLocalizations.of(context)
                                      .translate('Excludecountries'),
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: kBlack,
                                  ),
                                ),
                                subtitle: Text(
                                  "Any",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kGrey400,
                                  ),
                                ),
                                trailing: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Exclude_Countries()),
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
                                  height: 1,
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
                                title: Text(
                                  AppLocalizations.of(context)
                                      .translate('PlanModel'),
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: kBlack,
                                  ),
                                ),
                                subtitle: Text(
                                  "Any",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kGrey400,
                                  ),
                                ),
                                trailing: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Plane_Model()),
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
                                  height: 1,
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
          ],
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
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: kGreenLight,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                minimumSize: Size(
                  500,
                  displaySize(context).height * 0.05,
                ),
              ),
              child: Text(
                AppLocalizations.of(context).translate('Apply'),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: ResponsiveFlutter.of(context).fontSize(1.8),
                  color: kWhite,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
