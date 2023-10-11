import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class Exclude_Countries extends StatefulWidget {
  @override
  _Exclude_CountriesState createState() => _Exclude_CountriesState();
}

class _Exclude_CountriesState extends State<Exclude_Countries> {
  List<Map<String, dynamic>> Exclude_Countries = [
    {"name": "Any", "price": ""},
    {"name": "Vietnam", "price": "Southeast Asian"},
    {"name": "Germany", "price": "Central Europe"},
    {"name": "Hungary", "price": "Northern Europe"},
    {"name": "Ireland", "price": "Northern Europe"},
    {"name": "Italy", "price": "Southern Europe"},
    {"name": "Poland", "price": "Central Europe"},
    {"name": "Portugal", "price": "Southern Europe"},
    {"name": "Spain", "price": "Southern Europe"},
    {"name": "Japan", "price": "East Asian"},
    {"name": "South Korea", "price": "East Asian"},
    {"name": "French", "price": "Central Europe"},
  ];

  List<bool> choose_Exclude_Countries;

  @override
  void initState() {
    super.initState();
    choose_Exclude_Countries =
        List.generate(Exclude_Countries.length, (i) => false);
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
              AppLocalizations.of(context).translate('PlaneModel'),
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
                    ).merge(
                      ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed))
                            return kWhite;
                          return null; // Defer to the widget's default.
                        }),
                      ),
                    ),
                    child: Text(
                      AppLocalizations.of(context).translate('Clear'),
                      style: TextStyle(
                        fontSize: 17,
                        color: kBlack,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  )),
            ],
            backgroundColor: kWhite,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: displaySize(context).height * 0.06,
          bottom: displaySize(context).height * 0.06,
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
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: Exclude_Countries.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      Exclude_Countries[index]['name'],
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      Exclude_Countries[index]['price'],
                      style: TextStyle(
                        color: kGrey500,
                        fontSize: 15,
                      ),
                    ),
                    trailing: InkWell(
                      child: choose_Exclude_Countries[index] == true
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
                        for (int i = 0; i < Exclude_Countries.length; i++) {
                          if (i == index) {
                            choose_Exclude_Countries[index] = true;
                          } else {
                            choose_Exclude_Countries[i] = false;
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
                    borderRadius: new BorderRadius.circular(30.0)),
                minimumSize: Size(
                  500,
                  displaySize(context).height * 0.05,
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
