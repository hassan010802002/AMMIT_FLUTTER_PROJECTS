// ignore_for_file: camel_case_types, library_private_types_in_public_api, non_constant_identifier_names

import 'package:flutter/material.dart';

class Stopover_City extends StatefulWidget {
  const Stopover_City({super.key});

  @override
  _Stopover_CityState createState() => _Stopover_CityState();
}

class _Stopover_CityState extends State<Stopover_City> {
  List<Map<String, dynamic>> Stopover_City = [
    {"name": "Any", "price": ""},
    {"name": "Frankfurt", "price": "\$399"},
    {"name": "Montreal", "price": "\$332"},
    {"name": "Dublin", "price": "\$332"},
    {"name": "Toronto", "price": "\$332"},
    {"name": "Lisbon", "price": "\$332"},
    {"name": "Charlotte", "price": "\$332"},
    {"name": "Madrid", "price": "\$332"},
    {"name": "Chicago", "price": "\$332"},
    {"name": "Instanbul", "price": "\$332"},
    {"name": "Amsterdam", "price": "\$332"},
    {"name": "Paris", "price": "\$332"},
  ];

  List<bool>? choose_Stopover_City;

  @override
  void initState() {
    super.initState();
    choose_Stopover_City = List.generate(Stopover_City.length, (i) => false);
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
          itemCount: Stopover_City.length,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      Stopover_City[index]['name'],
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      Stopover_City[index]['price'],
                      style: TextStyle(
                        color: kGrey500,
                        fontSize: 15,
                      ),
                    ),
                    trailing: InkWell(
                      child: choose_Stopover_City[index] == true
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
                        for (int i = 0; i < Stopover_City.length; i++) {
                          if (i == index) {
                            choose_Stopover_City[index] = true;
                          } else {
                            choose_Stopover_City[i] = false;
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
