import 'dart:math';
import 'dart:ui';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/filter.dart';
import 'package:lywing/screen/choose/seclect_date.dart';
import 'package:lywing/screen/home/SysManager.dart';
import 'package:lywing/screen/home/choose-quantity/choose-type.dart';
import 'package:lywing/screen/home/choose-quantity/passengers-bags-classes.dart';
import 'package:lywing/screen/home/search-location/destination.dart';
import 'package:lywing/screen/home/search-location/place-to-go.dart';
import 'choose-filter/nonstop.dart';
import 'choose-flight-results/best.dart';
import 'package:lywing/sizes_helpers.dart';

import 'choose-flight-results/cheapest.dart';
import 'choose-flight-results/fastest.dart';
import 'flight-details.dart';

class Flight_Results extends StatefulWidget {
  @override
  _Flight_ResultsState createState() => _Flight_ResultsState();
}

class _Flight_ResultsState extends State<Flight_Results>
    with TickerProviderStateMixin {
  int _value = 0;
  final destination_from = TextEditingController();
  final destination_to = TextEditingController();

  Animation _arrowAnimation;
  AnimationController _arrowAnimationController;
  String swap;

  List ticket = ["12", "12", "12", "12"];

  DateTime _selectedValue = DateTime.now();
  DatePickerController _controller = DatePickerController();

  @override
  void initState() {
    super.initState();
    _arrowAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _arrowAnimation =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController);
  }

  @override
  Widget firstChild() {
    return InkWell(
      child: AnimatedBuilder(
        animation: _arrowAnimation,
        builder: (context, child) => Transform.rotate(
          angle: _arrowAnimation.value,
          child: Icon(
            Icons.autorenew_rounded,
            color: kGrey400,
            size: 30,
          ),
        ),
      ),
      onTap: () {
        _arrowAnimationController.isCompleted
            ? _arrowAnimationController.reverse()
            : _arrowAnimationController.forward();
        setState(() {
          swap = FileSystemManager.instance.typeAheadController;
          FileSystemManager.instance.typeAheadController =
              FileSystemManager.instance.typeAheadController1;
          FileSystemManager.instance.typeAheadController1 = swap;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
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
                FileSystemManager.instance.typeAheadController == null &&
                        FileSystemManager.instance.typeAheadController1 == null
                    ? ""
                    : FileSystemManager.instance.typeAheadController
                            .toString() +
                        ' - ' +
                        FileSystemManager.instance.typeAheadController1
                            .toString(),
                style: TextStyle(
                  color: kBlack,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
              actions: <Widget>[
                Container(
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.filter,
                      color: kBlack,
                      size: 20,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Filter()),
                      );
                    },
                  ),
                ),
              ],
              backgroundColor: kWhite,
            ),
          ),
          body: ListView(
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    // Flight information
                    Container(
                      padding: const EdgeInsets.all(10),
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
                      child: Column(
                        children: <Widget>[
                          //destination and departure
                          Container(
                            height: displaySize(context).height * 0.1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              height:
                                                  displaySize(context).height *
                                                      0.03,
                                              child: Icon(
                                                MaterialIcons.location_on,
                                                color: kGrey400,
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/icons/Line.png'),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height:
                                                  displaySize(context).height *
                                                      0.03,
                                              child: Transform.rotate(
                                                angle: pi / 2,
                                                child: Icon(
                                                  Icons.flight,
                                                  color: kGrey400,
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
                                                left: 15,
                                              ),
                                              height:
                                                  displaySize(context).height *
                                                      0.03,
                                              width:
                                                  displaySize(context).width *
                                                      0.4,
                                              child: Place_To_Go(),
                                            ),
                                            Expanded(
                                              child: Container(),
                                            ),
                                            Container(
                                              height:
                                                  displaySize(context).height *
                                                      0.03,
                                              margin: const EdgeInsets.only(
                                                left: 15,
                                              ),
                                              width:
                                                  displaySize(context).width *
                                                      0.4,
                                              child: Destination(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    right: 10,
                                  ),
                                  child: firstChild(),
                                ),
                              ],
                            ),
                          ),
                          //date of departure and return date
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Seclect_Date()),
                              );
                            },
                            child: Container(
                              width: displaySize(context).height * 0.6,
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: kGrey100,
                                borderRadius:
                                    BorderRadiusDirectional.circular(10.0),
                              ),
                              margin: const EdgeInsets.only(
                                top: 20,
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                child: FileSystemManager.instance.firstDate ==
                                        null
                                    ? Text(
                                        'Chosse date time',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: kGrey500,
                                        ),
                                      )
                                    : Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FileSystemManager
                                                  .instance.firstDate,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: kGrey500,
                                              ),
                                            ),
                                            Text(
                                              "-",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: kGrey500,
                                              ),
                                            ),
                                            Text(
                                              FileSystemManager
                                                  .instance.secondDate,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: kGrey500,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                              ),
                            ),
                          ),
                          //quantity information
                          Container(
                            margin: EdgeInsets.only(
                              top: displaySize(context).height * 0.03,
                              bottom: displaySize(context).height * 0.02,
                            ),
                            padding: EdgeInsets.only(
                              left: displaySize(context).width * 0.033,
                              right: displaySize(context).width * 0.033,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  width: 130,
                                  color: kWhite,
                                  child: Choose_Type1(),
                                ),
                                Container(
                                  width: 130,
                                  color: kWhite,
                                  child: Passengers_Bags_Classes1(),
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
                        left: 10,
                        right: 10,
                      ),
                      height: displaySize(context).height * 0.05,
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
                                width: displaySize(context).width * 0.35,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: _value == 0 ? kBlue : kWhite,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: kBlue,
                                  ),
                                ),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Best'),
                                  style: TextStyle(
                                    color: _value == 0 ? kWhite : kBlue,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: displaySize(context).width * 0.35,
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
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: kBlue,
                                  ),
                                ),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Cheapest'),
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
                                width: displaySize(context).width * 0.35,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: _value == 2 ? kBlue : kWhite,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: kBlue,
                                  ),
                                ),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Fastest'),
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
                                width: displaySize(context).width * 0.35,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(
                                  top: 5,
                                  bottom: 5,
                                ),
                                decoration: BoxDecoration(
                                  color: _value == 3 ? kBlue : kWhite,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: kBlue,
                                  ),
                                ),
                                child: Text(
                                  AppLocalizations.of(context)
                                      .translate('Nonstop'),
                                  style: TextStyle(
                                    color: _value == 3 ? kWhite : kBlue,
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
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          for (var index in ticket)
                            Container(
                              margin: EdgeInsets.only(
                                bottom: displaySize(context).height * 0.03,
                              ),
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: kGrey100,
                                    // spreadRadius: 6,
                                    blurRadius: 10,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Flight_Details()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: kWhite,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                  ),
                                  padding: const EdgeInsets.all(20),
                                  elevation: 0,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    //first flight
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          //logo
                                          Container(
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/VJ-1.png'),
                                                width:
                                                    displaySize(context).width *
                                                        0.11,
                                                height: displaySize(context)
                                                        .height *
                                                    0.05,
                                                fit: BoxFit.fill),
                                          ),

                                          Container(
                                            width: displaySize(context).width *
                                                0.35,
                                            height:
                                                displaySize(context).height *
                                                    0.1,
                                            margin: EdgeInsets.only(
                                              left: 10,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
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
                                                            color: kBlue,
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
                                            width: displaySize(context).width *
                                                0.3,
                                            height:
                                                displaySize(context).height *
                                                    0.1,
                                            padding: const EdgeInsets.only(
                                              top: 6,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    AppLocalizations.of(context)
                                                        .translate(
                                                            'directflight'),
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

                                    //second flight
                                    Container(
                                      height:
                                          displaySize(context).height * 0.06,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/VJ-1.png'),
                                                width:
                                                    displaySize(context).width *
                                                        0.11,
                                                height: displaySize(context)
                                                        .height *
                                                    0.05,
                                                fit: BoxFit.fill),
                                          ),
                                          Container(
                                            width: displaySize(context).width *
                                                0.35,
                                            height:
                                                displaySize(context).height *
                                                    0.1,
                                            margin: const EdgeInsets.only(
                                              left: 10,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      //destination and departure
                                                      Container(
                                                        child: Text(
                                                          '14:55',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            color: kBlack,
                                                          ),
                                                        ),
                                                      ),

                                                      //date of departure and return date
                                                      Container(
                                                        child: Transform.rotate(
                                                          angle: pi / 2,
                                                          child: Icon(
                                                            Icons.flight,
                                                            color: kBlue,
                                                          ),
                                                        ),
                                                      ),

                                                      //quantity information
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

                                                //'HAN -SIN, Vietjet Ari',
                                                Container(
                                                  child: Text(
                                                    'HAN -SIN, Vietjet Ari',
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
                                            width: displaySize(context).width *
                                                0.3,
                                            height:
                                                displaySize(context).height *
                                                    0.1,
                                            padding: const EdgeInsets.only(
                                              top: 6,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Container(
                                                  child: Text(
                                                    AppLocalizations.of(context)
                                                        .translate(
                                                            'directflight'),
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
                                      height:
                                          displaySize(context).height * 0.05,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/icons/Line-3.png'),
                                      ),
                                    ),

                                    //12 nights in Singapore, the total amount
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              '$index nights ${AppLocalizations.of(context).translate('in')} Singapore',
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
                              ),
                            )
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
              // height: 90,
              child: DatePicker(
                DateTime.now(),
                controller: _controller,
                initialSelectedDate: DateTime.now(),
                selectionColor: kGrey100,
                monthTextStyle: TextStyle(
                  color: kGrey500,
                  fontSize: 12,
                ),
                dateTextStyle: TextStyle(
                  color: kBlack,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                dayTextStyle: TextStyle(
                  color: kGrey600,
                  fontSize: 12,
                ),
                onDateChange: (date) {
                  // New date selected
                  // setState(() {
                  //   _selectedValue = date;
                  // });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
