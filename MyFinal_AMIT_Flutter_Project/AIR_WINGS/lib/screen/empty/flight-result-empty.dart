// ignore_for_file: camel_case_types, library_private_types_in_public_api, non_constant_identifier_names

import 'dart:math';
import 'package:air_wings/common/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/app_localizations.dart';
import '../../sizes_helpers.dart';

class Flight_Result_Empty extends StatefulWidget {
  const Flight_Result_Empty({super.key});

  @override
  _Flight_Result_EmptyState createState() => _Flight_Result_EmptyState();
}

class _Flight_Result_EmptyState extends State<Flight_Result_Empty>
    with TickerProviderStateMixin {
  final destination_from = TextEditingController();
  final destination_to = TextEditingController();

  Animation? _arrowAnimation;
  AnimationController? _arrowAnimationController;

  @override
  void initState() {
    super.initState();
    _arrowAnimationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _arrowAnimation =
        Tween(begin: 0.0, end: pi).animate(_arrowAnimationController!);
  }

  Widget firstChild() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kWhite,
        side: const BorderSide(
          width: 0.0,
          color: kWhite,
        ),
        elevation: 0,
      ),
      child: AnimatedBuilder(
        animation: _arrowAnimation!,
        builder: (context, child) => Transform.rotate(
          angle: _arrowAnimation!.value,
          child: const Icon(
            Icons.autorenew_rounded,
            color: kGrey400,
            size: 30,
          ),
        ),
      ),
      onPressed: () {
        _arrowAnimationController!.isCompleted
            ? _arrowAnimationController!.reverse()
            : _arrowAnimationController!.forward();
        setState(() {
          // destination_to.text = destination_from.text;
          destination_from.text = destination_to.text;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: InkWell(
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: kBlack,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: const Text(
            'SIN - HAN',
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                FontAwesomeIcons.filter,
                color: kBlack,
              ),
              onPressed: () {},
            ),
          ],
          backgroundColor: kWhite,
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.location_on,
                                color: kGrey400,
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 15,
                                ),
                                width: displaySize(context).width * 0.4,
                                child: const Text(
                                  'Singapore (SIN)',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              right: 157,
                            ),
                            child: const Row(
                              children: <Widget>[
                                Image(
                                  image:
                                      AssetImage('assets/icons/Line.png'),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Transform.rotate(
                                angle: pi / 2,
                                child: const Icon(
                                  Icons.flight,
                                  color: kGrey400,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 15,
                                ),
                                width: displaySize(context).width * 0.4,
                                child: const Text(
                                  'HaNoi (HAN)',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: kBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: firstChild(),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: kGrey100,
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                  ),
                  margin: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 20,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Wed, Mar 20',
                        style: TextStyle(
                          fontSize: 15,
                          color: kGrey500,
                        ),
                      ),
                      Text(
                        '-',
                        style: TextStyle(
                          fontSize: 15,
                          color: kGrey500,
                        ),
                      ),
                      Text(
                        'Mon, Mar 25',
                        style: TextStyle(
                          fontSize: 15,
                          color: kGrey500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: 130,
                        color: kWhite,
                        child: Row(
                          children: <Widget>[
                            const Icon(
                              FontAwesomeIcons.rightLeft,
                              size: 20,
                              color: kGrey600,
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: const Text(
                                'Return',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kGrey600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 130,
                        color: kWhite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.only(
                                    right: 5,
                                  ),
                                  child: const Icon(
                                    Icons.supervisor_account,
                                    size: 20,
                                    color: kGrey600,
                                  ),
                                ),
                                const Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kGrey600,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.only(
                                    right: 5,
                                  ),
                                  child: const Icon(
                                    Icons.child_friendly_sharp,
                                    size: 20,
                                    color: kGrey600,
                                  ),
                                ),
                                const Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kGrey600,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.only(
                                    right: 5,
                                  ),
                                  child: const Icon(
                                    FontAwesomeIcons.suitcase,
                                    size: 15,
                                    color: kGrey600,
                                  ),
                                ),
                                const Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kGrey600,
                                  ),
                                ),
                              ],
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
          SizedBox(
            height: displaySize(context).height / 1.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  ('assets/images/image-empty/no-flight.svg'),
                  height: displaySize(context).height * 0.2,
                  width: displaySize(context).width * 0.2,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    AppLocalizations.of(context)!
                        .translate('Noflightswerefound')!,
                    style: const TextStyle(
                      fontSize: 22,
                      color: kBlack,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: displaySize(context).width * 0.55,
                  child: Text(
                    AppLocalizations.of(context)!.translate('Wehavenot')!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 15,
                      color: kGrey600,
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
