import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Contact_Numbers extends StatefulWidget {
  @override
  _Contact_NumbersState createState() => _Contact_NumbersState();
}

class _Contact_NumbersState extends State<Contact_Numbers> {
  List<Map<String, dynamic>> listcountry = [
    {
      "country": "South Korea",
      "language": "Korean",
      "numberphone": "1666 0060",
    },
    {
      "country": "Japan",
      "language": "Japanese",
      "numberphone": "0120 925 780",
    },
    {
      "country": "Viet Nam",
      "language": "Viet Nam",
      "numberphone": "082 432 423",
    },
    {
      "country": "Singapore",
      "language": "Singapore",
      "numberphone": "174 934 723",
    },
    {
      "country": "Australia",
      "language": "Australia",
      "numberphone": "1666 0060",
    },
    {
      "country": "Germany",
      "language": "Germany",
      "numberphone": "174 934 723",
    },
    {
      "country": "France",
      "language": "France",
      "numberphone": "1666 0060",
    },
    {
      "country": "Spain",
      "language": "Spain",
      "numberphone": "082 432 423",
    },
    {
      "country": "Russia",
      "language": "Russia",
      "numberphone": "1666 0060",
    },
  ];

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
            AppLocalizations.of(context).translate('Contactnumbers'),
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
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: displaySize(context).width * 0.05,
                    top: displaySize(context).height * 0.04,
                    bottom: displaySize(context).height * 0.01,
                  ),
                  child: Text(
                    AppLocalizations.of(context)
                        .translate('INTERNATIONALNUMBER'),
                    style: TextStyle(
                      fontSize: 15,
                      color: kGrey400,
                    ),
                  ),
                ),
                Container(
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
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: displaySize(context).height * 0.02,
                                bottom: displaySize(context).height * 0.01,
                              ),
                              child: Text(
                                AppLocalizations.of(context)
                                    .translate('Englishspeackingregions'),
                                style: TextStyle(
                                  fontSize: 17,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            Divider(
                              height: 2,
                              color: kGrey500,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: displaySize(context).height * 0.02,
                          bottom: displaySize(context).height * 0.02,
                        ),
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                          right: displaySize(context).width * 0.05,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      AppLocalizations.of(context)
                                          .translate('GlobalAccessNumber'),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: displaySize(context).height * 0.01,
                                      bottom:
                                          displaySize(context).height * 0.01,
                                    ),
                                    child: Text(
                                      "+1-646-662-8606",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "English: 24/7",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Icon(
                                MaterialIcons.phone_in_talk,
                                color: kGrey500,
                                size: 40,
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
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: displaySize(context).width * 0.05,
                    top: displaySize(context).height * 0.04,
                    bottom: displaySize(context).height * 0.01,
                  ),
                  child: Text(
                    AppLocalizations.of(context)
                        .translate('OTHERCOUNTRYANDREGIONS'),
                    style: TextStyle(
                      fontSize: 15,
                      color: kGrey400,
                    ),
                  ),
                ),
                Container(
                  color: kWhite,
                  child: ExpansionCard(
                    margin: const EdgeInsets.only(
                      top: 0,
                    ),
                    leading: Container(
                      child: Text(
                        "United States",
                        style: TextStyle(
                          fontSize: 17,
                          color: kBlack,
                        ),
                      ),
                    ),
                    children: [
                      Divider(
                        height: 2,
                        color: kGrey400,
                      ),
                      //Global Access Number
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                          right: displaySize(context).width * 0.05,
                          top: displaySize(context).height * 0.02,
                          bottom: displaySize(context).height * 0.01,
                        ),
                        child: Text(
                          "Global Access Number",
                          style: TextStyle(
                            fontSize: 12,
                            color: kBlack,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: displaySize(context).width * 0.05,
                          right: displaySize(context).width * 0.05,
                          bottom: displaySize(context).height * 0.02,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      "+1-646-662-8606",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "English: 24/7",
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
                              child: InkWell(
                                onTap: () {},
                                child: Icon(
                                  MaterialIcons.phone_in_talk,
                                  color: kGrey500,
                                  size: 40,
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
                  child: ListView.builder(
                    itemCount: listcountry.length,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(
                          top: displaySize(context).height * 0.03,
                        ),
                        color: kWhite,
                        child: ExpansionCard(
                          margin: const EdgeInsets.only(
                            top: 0,
                          ),
                          leading: Container(
                            child: Text(
                              listcountry[index]["country"],
                              style: TextStyle(
                                fontSize: 17,
                                color: kBlack,
                              ),
                            ),
                          ),
                          children: [
                            Divider(
                              height: 2,
                              color: kGrey400,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                left: displaySize(context).width * 0.05,
                                right: displaySize(context).width * 0.05,
                                top: displaySize(context).height * 0.02,
                                bottom: displaySize(context).height * 0.01,
                              ),
                              child: Text(
                                AppLocalizations.of(context)
                                        .translate('Within') +
                                    " " +
                                    listcountry[index]["country"],
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            // phone country
                            Container(
                              margin: EdgeInsets.only(
                                left: displaySize(context).width * 0.05,
                                right: displaySize(context).width * 0.05,
                                bottom: displaySize(context).height * 0.02,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            listcountry[index]["numberphone"],
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: kBlack,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            top: displaySize(context).height *
                                                0.01,
                                            bottom:
                                                displaySize(context).height *
                                                    0.01,
                                          ),
                                          child: Text(
                                            listcountry[index]["language"] +
                                                ": 24/7",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "English: 24/7",
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
                                    child: InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        MaterialIcons.phone_in_talk,
                                        color: kGrey500,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 2,
                              color: kGrey400,
                            ),
                            //Global Access Number
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                left: displaySize(context).width * 0.05,
                                right: displaySize(context).width * 0.05,
                                top: displaySize(context).height * 0.02,
                                bottom: displaySize(context).height * 0.01,
                              ),
                              child: Text(
                                "Global Access Number",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: displaySize(context).width * 0.05,
                                right: displaySize(context).width * 0.05,
                                bottom: displaySize(context).height * 0.02,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "+86  513-8918-6111",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: kBlack,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            top: displaySize(context).height *
                                                0.01,
                                            bottom:
                                                displaySize(context).height *
                                                    0.01,
                                          ),
                                          child: Text(
                                            listcountry[index]["language"] +
                                                ": 24/7",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: kGrey400,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "English: 24/7",
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
                                    child: InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        MaterialIcons.phone_in_talk,
                                        color: kGrey500,
                                        size: 40,
                                      ),
                                    ),
                                  ),
                                ],
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
    );
  }
}
