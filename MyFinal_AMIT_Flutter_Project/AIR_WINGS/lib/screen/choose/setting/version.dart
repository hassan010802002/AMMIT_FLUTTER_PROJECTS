import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Version extends StatefulWidget {
  @override
  _VersionState createState() => _VersionState();
}

class _VersionState extends State<Version> {
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
              "About",
              style: TextStyle(
                color: kBlack,
                fontSize: 17,
                fontWeight: FontWeight.normal,
              ),
            ),
            backgroundColor: kWhite,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.07,
            ),
            child: Column(
              children: [
                SvgPicture.asset(
                  ('assets/images/Artboard1.svg'),
                  width: displaySize(context).width * 0.07,
                  height: displaySize(context).height * 0.07,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: displaySize(context).height * 0.01,
                  ),
                  child: AutoSizeText(
                    "Designed and built with love\nby Conikal in Vietnam",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kBlack,
                    ),
                    presetFontSizes: [13, 10, 7, 4],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.06,
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: displaySize(context).height * 0.02,
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Developer",
                          style: TextStyle(
                            color: kGrey400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Viet Hoang Lai",
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "Designer",
                          style: TextStyle(
                            color: kGrey400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Long Van Ha",
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 13,
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
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.06,
            ),
            child: Column(
              children: [
                Container(
                  child: Text(
                    "Version 1.0.0",
                    style: TextStyle(
                      color: kGrey400,
                      fontSize: 13,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "© 2020 - 2021 Lywing",
                    style: TextStyle(
                      color: kGrey400,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: SvgPicture.asset(
              ('assets/images/Traveling-rafiki.svg'),
              height: displaySize(context).height * 0.5,
              width: displaySize(context).width * 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
