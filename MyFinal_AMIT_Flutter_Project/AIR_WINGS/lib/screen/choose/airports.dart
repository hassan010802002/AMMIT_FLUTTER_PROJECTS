import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class Airports extends StatefulWidget {
  @override
  _AirportsState createState() => _AirportsState();
}

class _AirportsState extends State<Airports> {
  List<Map<String, dynamic>> Departure_Airport = [
    {"name": "Any"},
    {"name": "LHR London Heathrow Airport"},
    {"name": "LGW Gatwick Airport"},
    {"name": "STN Stansted Airport"},
  ];

  List<bool> choose_Departure_Airport;

  List<Map<String, dynamic>> Arrival_Airport = [
    {"name": "Any"},
    {"name": "EWR Newark Liberty International Airport"},
    {"name": "JFK John F. Kennedy International Airport"},
    {"name": "LGA LaGuardia Airport"},
    {"name": "SWF Stewart Airport"},
  ];

  List<bool> choose_Arrival_Airport;

  @override
  void initState() {
    super.initState();
    choose_Departure_Airport =
        List.generate(Departure_Airport.length, (i) => false);
    choose_Arrival_Airport =
        List.generate(Arrival_Airport.length, (i) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                // spreadRadius: 6,
                blurRadius: 15,
                offset: Offset(0, 0),
              ),
            ],
          ),
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
              AppLocalizations.of(context).translate('Airports'),
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
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate('Clear'),
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
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.06,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: displaySize(context).width * 0.04,
                    top: displaySize(context).height * 0.02,
                    bottom: displaySize(context).height * 0.02,
                  ),
                  child: Text(
                    AppLocalizations.of(context).translate('DepartureAirport'),
                    style: TextStyle(
                      color: kBlack,
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Departure_Airport.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                Departure_Airport[index]['name'],
                                style: TextStyle(
                                  color: kBlack,
                                  fontSize: 15,
                                ),
                              ),
                              trailing: InkWell(
                                child: choose_Departure_Airport[index] == true
                                    ? const Icon(
                                        MaterialIcons.lens,
                                        color: kBlue,
                                      )
                                    : Container(
                                        child: Icon(
                                          MaterialIcons.radio_button_unchecked,
                                          color: kGrey400,
                                        ),
                                      ),
                              ),
                              onTap: () {
                                setState(() {
                                  for (int i = 0;
                                      i < Departure_Airport.length;
                                      i++) {
                                    if (i == index) {
                                      choose_Departure_Airport[index] = true;
                                    } else {
                                      choose_Departure_Airport[i] = false;
                                    }
                                  }
                                });
                              },
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
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.06,
              bottom: displaySize(context).height * 0.1,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: displaySize(context).width * 0.04,
                    top: displaySize(context).height * 0.02,
                    bottom: displaySize(context).height * 0.02,
                  ),
                  child: Text(
                    AppLocalizations.of(context)
                        .translate('ClaArrivalAirportss'),
                    style: TextStyle(
                      color: kBlack,
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Arrival_Airport.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                Arrival_Airport[index]['name'],
                                style: TextStyle(
                                  color: kBlack,
                                  fontSize: 15,
                                ),
                              ),
                              trailing: InkWell(
                                child: choose_Arrival_Airport[index] == true
                                    ? const Icon(
                                        MaterialIcons.lens,
                                        color: kBlue,
                                      )
                                    : Container(
                                        child: Icon(
                                          MaterialIcons.radio_button_unchecked,
                                          color: kGrey400,
                                        ),
                                      ),
                              ),
                              onTap: () {
                                setState(() {
                                  for (int i = 0;
                                      i < Arrival_Airport.length;
                                      i++) {
                                    if (i == index) {
                                      choose_Arrival_Airport[index] = true;
                                    } else {
                                      choose_Arrival_Airport[i] = false;
                                    }
                                  }
                                });
                              },
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
                      );
                    },
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
          child: Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: kGreenLight,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                minimumSize: Size(
                  500,
                  displaySize(context).height * 0.05,
                ),
              ).merge(
                ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) return kWhite;
                    return null; // Defer to the widget's default.
                  }),
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
