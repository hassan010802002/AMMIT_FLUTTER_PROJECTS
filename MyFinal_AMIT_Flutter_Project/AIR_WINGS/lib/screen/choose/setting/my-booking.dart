import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants/colors.dart';
import 'package:lywing/screen/choose/flight-details.dart';
import 'package:lywing/screen/choose/flight-details.dart';
import 'package:lywing/screen/choose/setting/details-booking.dart';
import 'package:lywing/sizes_helpers.dart';

class My_Booking extends StatefulWidget {
  @override
  _My_BookingState createState() => _My_BookingState();
}

class _My_BookingState extends State<My_Booking> {
  List money = ["\$122", "\$122"];

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
            AppLocalizations.of(context).translate('MyBooking'),
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
          Container(
            child: Column(
              children: [
                for (var index in money)
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 30,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: kGrey100,
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
                              builder: (context) => Details_Booking()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: kWhite,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          side: BorderSide(
                            width: 0,
                            color: kWhite,
                          ),
                        ),
                        padding: const EdgeInsets.all(15),
                        elevation: 0,
                      ).merge(
                        ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return kWhite;
                            return null; // Defer to the widget's default.
                          }),
                        ),
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
                                          border: Border.all(
                                              color: kGrey300, width: 1),
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
                                          border: Border.all(
                                              color: kGrey300, width: 1),
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
                                          image: AssetImage(
                                              'assets/images/VJ.png'),
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
                                          border: Border.all(
                                              color: kGrey300, width: 1),
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
                                          border: Border.all(
                                              color: kGrey300, width: 1),
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
                                          image: AssetImage(
                                              'assets/images/VJ.png'),
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
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    '${AppLocalizations.of(context).translate('Total')}:',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: kGrey400,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 15,
                                  ),
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
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
