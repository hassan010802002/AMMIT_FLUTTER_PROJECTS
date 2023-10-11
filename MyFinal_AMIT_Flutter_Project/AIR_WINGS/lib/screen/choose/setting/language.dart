import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lywing/sizes_helpers.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  List<Map<String, dynamic>> listFakeData = [
    {"image": "assets/country-flags-image/english.svg", "name": "English"},
    {"image": "assets/country-flags-image/vietnam.svg", "name": "Viet Nam"},
    {"image": "assets/country-flags-image/thailand.svg", "name": "Thai Land"},
    {"image": "assets/country-flags-image/south-korea.svg", "name": "Korea"},
    {"image": "assets/country-flags-image/japan.svg", "name": "Japan"},
  ];

  List<bool> choose_language;

  @override
  void initState() {
    super.initState();
    choose_language = List.generate(listFakeData.length, (i) => false);
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
              AppLocalizations.of(context).translate('Language'),
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
      body: Container(
        decoration: BoxDecoration(
          color: kGrey100,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              // spreadRadius: 6,
              blurRadius: 15,
              offset: Offset(0, 0),
            ),
          ],
        ),
        margin: EdgeInsets.only(
          top: displaySize(context).height * 0.03,
        ),
        child: ListView.builder(
          itemCount:
              listFakeData.length, // cho ty dang run lai me no bij sao the nay
          itemBuilder: (context, index) {
            return Container(
              color: kWhite,
              child: Column(
                children: [
                  ListTile(
                    leading: SvgPicture.asset(
                      listFakeData[index]["image"],
                      width: displaySize(context).width * 0.05,
                      height: displaySize(context).height * 0.05,
                    ),
                    title: Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                          width: 1,
                          color: kGrey200,
                        )),
                      ),
                      padding: EdgeInsets.only(
                        bottom: displaySize(context).height * 0.01,
                        top: displaySize(context).height * 0.015,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          choose_language[index] == true
                              ? Text(
                                  listFakeData[index][
                                      "name"], // Goi cai truoc dau 2 cham ra, index la thu tu cua phan tu nhung sa no chi cos 2
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlue,
                                  ),
                                )
                              : Text(
                                  listFakeData[index][
                                      "name"], // Goi cai truoc dau 2 cham ra, index la thu tu cua phan tu nhung sa no chi cos 2
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                          choose_language[index] == true
                              ? Icon(Icons.done, color: kBlue)
                              : Container(),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < listFakeData.length; i++) {
                          if (i == index) {
                            choose_language[index] = true;
                          } else {
                            choose_language[i] = false;
                          }
                        }
                      });
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
