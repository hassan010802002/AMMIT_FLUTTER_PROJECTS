import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Any extends StatefulWidget {
  @override
  _AnyState createState() => _AnyState();
}

class _AnyState extends State<Any> {
  double _currentSliderValue1 = 1;
  double _currentSliderValue2 = 1;
  double _currentSliderValue3 = 1;

  bool monVal = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    AppLocalizations.of(context).translate('Duration'),
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
                                      fontWeight: FontWeight.normal,
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
                          label: _currentSliderValue1.round().toString(),
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
                          AppLocalizations.of(context).translate('Stopover'),
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
                              AppLocalizations.of(context).translate('25Hours'),
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
                          label: _currentSliderValue2.round().toString(),
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
                    AppLocalizations.of(context).translate('Price'),
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
                          label: _currentSliderValue3.round().toString(),
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
                    AppLocalizations.of(context).translate('Bags'),
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
                      Checkbox(
                        value: monVal,
                        onChanged: (bool value) {
                          setState(() {
                            monVal = value;
                          });
                        },
                      ),
                      Container(
                        width: displaySize(context).width * 0.8,
                        child: Text(
                          AppLocalizations.of(context)
                              .translate('includeFlightsWithoutCheckedBaggage'),
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
