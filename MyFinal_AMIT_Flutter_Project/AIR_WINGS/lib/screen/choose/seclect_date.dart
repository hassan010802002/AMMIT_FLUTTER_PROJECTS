import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lywing/common/constants/colors.dart';
import 'package:intl/intl.dart';
import 'package:lywing/screen/home/SysManager.dart';
import 'package:scrollable_clean_calendar/scrollable_clean_calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:lywing/sizes_helpers.dart';

import 'flight-results.dart';

class Seclect_Date extends StatefulWidget {
  @override
  _Seclect_DateState createState() => _Seclect_DateState();
}

class _Seclect_DateState extends State<Seclect_Date> {
  String _firstDate;
  String _secondDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
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
            'Pick a Date',
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: displaySize(context).height * 0.8,
              child: ScrollableCleanCalendar(
                onRangeSelected: (firstDate, secondDate) {
                  _firstDate = DateFormat('dd-MM-yyyy').format(firstDate);
                  _secondDate = DateFormat('dd-MM-yyyy').format(secondDate);
                  FileSystemManager.instance.firstDate = _firstDate;
                  FileSystemManager.instance.secondDate = _secondDate;
                  // print(_firstDate);
                },
                locale: 'en',
                minDate: DateTime.now(),
                maxDate: DateTime.now().add(
                  Duration(days: 365),
                ),
                renderPostAndPreviousMonthDates: true,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: kBlue,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                  side: BorderSide(
                    width: 0.0,
                    color: kBlue,
                  ),
                ),
                elevation: 0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Submit',
                style: TextStyle(
                  fontSize: 15,
                  color: kWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
