import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';

class Edit_Profile extends StatefulWidget {
  @override
  _Edit_ProfileState createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  int _value = 0;

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
            AppLocalizations.of(context).translate('EditProfile'),
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          actions: <Widget>[
            Container(
              child: TextButton(
                child: Text(
                  AppLocalizations.of(context).translate('Save'),
                  style: TextStyle(
                    fontSize: 17,
                    color: kBlack,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
          backgroundColor: kWhite,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              top: 30,
              bottom: 30,
            ),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: kWhite,
              border: Border.all(
                color: kWhite,
                width: 0,
              ),
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
                    AppLocalizations.of(context).translate('Passengerdetails'),
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

                //Surname
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          AppLocalizations.of(context).translate('Surname'),
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
                              hintText: 'eg. NGUYEN'),
                        ),
                      ),
                    ],
                  ),
                ),

                //Middle name
                Container(
                  margin: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          AppLocalizations.of(context).translate('Middlename'),
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
                            hintText: 'eg. VAN',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Given name
                Container(
                  margin: const EdgeInsets.only(
                    top: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          AppLocalizations.of(context).translate('Givenname'),
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
                            hintText: 'eg. LONG',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Gender
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
                          AppLocalizations.of(context).translate('Gender'),
                          style: TextStyle(
                            fontSize: 11,
                            color: kGrey400,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
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
                                child: Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () => setState(() => _value = 0),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            height: 35,
                                            width: 35,
                                            child: Icon(
                                              FontAwesomeIcons.female,
                                              color: _value == 0
                                                  ? kBlue
                                                  : kGrey600,
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              AppLocalizations.of(context)
                                                  .translate('Famale'),
                                              style: TextStyle(
                                                color: _value == 0
                                                    ? kBlue
                                                    : kGrey400,
                                                fontSize: 15,
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
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.only(
                                  left: 10,
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 1.0,
                                      color: kGrey500,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () => setState(() => _value = 1),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            height: 35,
                                            width: 35,
                                            child: Icon(
                                              FontAwesomeIcons.male,
                                              color: _value == 1
                                                  ? kBlue
                                                  : kGrey600,
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              AppLocalizations.of(context)
                                                  .translate('Male'),
                                              style: TextStyle(
                                                color: _value == 1
                                                    ? kBlue
                                                    : kGrey400,
                                                fontSize: 15,
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
                ),

                //Date of birth
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          AppLocalizations.of(context).translate('Dateofbirth'),
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
                                .translate('Pickyourdateofbirth'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Nationality
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          AppLocalizations.of(context).translate('Nationality'),
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
                                .translate('SelectaCountryorRegion'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //City of Residence
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          AppLocalizations.of(context)
                              .translate('CityofResidence'),
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
                              hintText: 'eg. Hanoi'),
                        ),
                      ),
                    ],
                  ),
                ),

                //Requently visited Cities
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          AppLocalizations.of(context)
                              .translate('RequentlyvisitedCities'),
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
                              hintText: 'eg. New York, London, Tokyo'),
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
