// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:air_wings/common/constants/colors.dart';
import 'package:air_wings/sizes_helpers.dart';
import 'package:flutter/material.dart';

class My_Trip extends StatefulWidget {
  const My_Trip({super.key});

  @override
  _My_TripState createState() => _My_TripState();
}

class _My_TripState extends State<My_Trip> {
  List date = ["Jun 28", "Jun 28"];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        children: <Widget>[
          Column(
            children: [
              for (var index in date)
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 0,
                      color: kWhite,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        height: displaySize(context).height * 0.13,
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          color: kBlue,
                        ),
                        child: Row(
                          children: <Widget>[
                            const Text(
                              'Hanoi',
                              style: TextStyle(
                                fontSize: 17,
                                color: kWhite,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              child: const Icon(
                                Icons.arrow_right_alt_outlined,
                                color: kWhite,
                              ),
                            ),
                            const Text(
                              'Singapore',
                              style: TextStyle(
                                fontSize: 17,
                                color: kWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          ),
                          color: kWhite,
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 6,
                              child: Container(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  bottom: 10,
                                  left: 15,
                                  right: 15,
                                ),
                                // padding: const EdgeInsets.only(
                                //     left: 10,
                                //   right: 10,
                                // ),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            const Image(
                                              image: AssetImage('assets/images/VJ.png'),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                left: 10,
                                                right: 10,
                                              ),
                                              child: const Text(
                                                'Vietjet Air',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: kGrey600,
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              'VJ 177',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: kGrey500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Text(
                                          'Economy',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: kGrey500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        top: 20,
                                        bottom: 10,
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '9:35',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: kBlack,
                                            ),
                                          ),
                                          Text(
                                            'direct - 12h30',
                                            style: TextStyle(
                                              fontSize: 11,
                                              color: kGrey500,
                                            ),
                                          ),
                                          Text(
                                            '17:35',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: kBlack,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          'Hanoi Noi Bai',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: kGrey500,
                                          ),
                                        ),
                                        Text(
                                          'Singapore Changi',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: kGrey500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: displaySize(context).height * 0.05,
                                  bottom: displaySize(context).height * 0.05,
                                  left: 11,
                                  right: 11,
                                ),
                                decoration: const BoxDecoration(
                                  color: kGreenLight,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  '$index',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
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
            ],
          ),
        ],
      ),
    );
  }
}
