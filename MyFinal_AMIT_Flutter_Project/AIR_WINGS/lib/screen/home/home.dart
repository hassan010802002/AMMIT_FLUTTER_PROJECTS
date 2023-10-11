// ignore_for_file: library_private_types_in_public_api, constant_identifier_names, non_constant_identifier_names

import 'dart:math';
import 'package:air_wings/common/app_localizations.dart';
import 'package:air_wings/common/constants/colors.dart';
import 'package:air_wings/screen/choose/flight-results.dart';
import 'package:air_wings/screen/choose/seclect_date.dart';
import 'package:air_wings/sizes_helpers.dart';
import 'package:flutter/material.dart';

import 'SysManager.dart';
import 'choose-quantity/choose-type.dart';
import 'choose-quantity/passengers-bags-classes.dart';
import 'search-location/destination.dart';
import 'search-location/place-to-go.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

enum SingingCharacter { Economy, Premium_Economy, Business }

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final TextEditingController destination_from = TextEditingController();
  final TextEditingController destination_to = TextEditingController();

  String? swap;

  int selectedRadio = 1;

  Animation? _arrowAnimation;
  AnimationController? _arrowAnimationController;

  @override
  void initState() {
    super.initState();
    _arrowAnimationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    _arrowAnimation =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController!);
  }

  Widget firstChild() {
    return InkWell(
      child: AnimatedBuilder(
        animation: _arrowAnimation!,
        builder: (context, child) => Transform.rotate(
          angle: _arrowAnimation!.value,
          child: const Icon(
            Icons.autorenew_rounded,
            color: kBlue,
            size: 30,
          ),
        ),
      ),
      onTap: () {
        _arrowAnimationController!.isCompleted
            ? _arrowAnimationController!.reverse()
            : _arrowAnimationController!.forward();
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
      child: Scaffold(
        body: Container(
          width: displaySize(context).width,
          height: displaySize(context).height,
          color: kGrey100,
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Title
              Container(
                margin: const EdgeInsets.only(
                  bottom: 40,
                ),
                alignment: Alignment.bottomLeft,
                width: 230,
                height: displaySize(context).height * 0.2,
                child: Text(
                  AppLocalizations.of(context)!
                      .translate('travelTheWorldMadeSimple')!,
                  style: const TextStyle(
                    fontSize: 28,
                    color: kGrey600,
                  ),
                ),
              ),
              //Places to come and go
              Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: displaySize(context).height * 0.15,
                        padding: EdgeInsets.only(
                          left: displaySize(context).width * 0.025,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //Tim dia diem
                            Row(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    const Icon(
                                      Icons.location_on,
                                      color: kGrey400,
                                    ),
                                    const Image(
                                      image: AssetImage(
                                          'assets/icons/Line.png'),
                                    ),
                                    Transform.rotate(
                                      angle: pi / 2,
                                      child: const Icon(
                                        Icons.flight,
                                        color: kGrey400,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: displaySize(context).height *
                                            0.03,
                                        child: Place_To_Go(),
                                      ),
                                      Expanded(
                                        child: Container(),
                                      ),
                                      SizedBox(
                                        height: displaySize(context).height *
                                            0.03,
                                        child: Destination(),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            // icon doi vi tri
                            Container(
                              child: firstChild(),
                            ),
                          ],
                        ),
                      ),

                      // Ngay di va ngay ve
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
                            child: FileSystemManager.instance.firstDate != null
                                ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FileSystemManager.instance.firstDate!,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: kGrey500,
                                      ),
                                    ),
                                    const Text(
                                      "-",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: kGrey500,
                                      ),
                                    ),
                                    Text(
                                      FileSystemManager.instance.secondDate!,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: kGrey500,
                                      ),
                                    )
                                  ],
                                )
                                : const Text(
                                    "Choose Date Time",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kGrey500,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  )),

              //Quantity information
              Container(
                margin: EdgeInsets.only(
                  left: displaySize(context).width * 0.04,
                  right: displaySize(context).width * 0.04,
                  bottom: 20,
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      color: const Color.fromRGBO(112, 112, 112, 0.0),
                      child: Choose_Type(),
                    ),
                    Container(
                      width: 130,
                      color: const Color.fromRGBO(112, 112, 112, 0.0),
                      child: Passengers_Bags_Classes(),
                    ),
                  ],
                ),
              ),

              //button search
              Container(
                width: displaySize(context).width,
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Flight_Results()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBlue,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(
                        width: 0.0,
                        color: kBlue,
                      ),
                    ),
                    minimumSize: Size(
                      500,
                      displaySize(context).height * 0.05,
                    ),
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.translate('Search')!,
                    style: const TextStyle(
                      color: kWhite,
                      fontSize: 15,
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
