// ignore_for_file: library_private_types_in_public_api

import 'package:air_wings/common/app_localizations.dart';
import 'package:air_wings/common/constants/colors.dart';
import 'package:air_wings/sizes_helpers.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List city = ["Singapope", "Singapope", "Singapope", "Singapope"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Container(
          alignment: Alignment.bottomLeft,
          width: displaySize(context).width,
          height: displaySize(context).height * 0.13,
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          decoration: BoxDecoration(
            color: kWhite,
            border: Border.all(
              width: 0.0,
              color: kWhite,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                // spreadRadius: 6,
                blurRadius: 15,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Text(
            AppLocalizations.of(context)!.translate('Watch')!,
            style: const TextStyle(
              fontSize: 32,
              color: kBlack,
            ),
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: [
              for (var index in city)
                Container(
                  margin: EdgeInsets.only(
                    left: displaySize(context).width * 0.03,
                    right: displaySize(context).width * 0.03,
                    top: displaySize(context).height * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 0.0,
                      color: kWhite,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        // spreadRadius: 6,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kWhite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.0),
                        side: const BorderSide(
                          width: 0,
                          color: kWhite,
                        ),
                      ),
                      elevation: 0,
                      padding: EdgeInsets.only(
                        left: displaySize(context).width * 0.04,
                        right: displaySize(context).width * 0.04,
                        top: displaySize(context).height * 0.01,
                        bottom: displaySize(context).height * 0.02,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              '$index',
                              style: const TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            InkWell(
                              child: const Icon(
                                Icons.more_horiz,
                                color: kGrey400,
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            '${AppLocalizations.of(context)!.translate('from')} Hồ Chí Minh ${AppLocalizations.of(context)!.translate('city')}',
                            style: const TextStyle(
                              fontSize: 11,
                              color: kGrey600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: <Widget>[
                            const Image(
                              image: AssetImage('assets/icons/explore/date-2.png'),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: const Text(
                                'Web, Apri 16 - Thu Apr 18',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kGrey600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
