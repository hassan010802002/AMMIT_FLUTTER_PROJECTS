import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class Carriers extends StatefulWidget {
  @override
  _CarriersState createState() => _CarriersState();
}

class _CarriersState extends State<Carriers> {
  List<Map<String, dynamic>> carriers = [
    {"image": "assets/images/carriers/5J.png", "name": "Air France"},
    {"image": "assets/images/carriers/AC.png", "name": "British Airways"},
    {"image": "assets/images/carriers/AF.png", "name": "Bamboo Airways"},
    {"image": "assets/images/carriers/B7.png", "name": "Cathay Pacific"},
    {"image": "assets/images/carriers/BA.png", "name": "Cebu-Pacific"},
    {"image": "assets/images/carriers/CX.png", "name": "Delta Air Lines"},
    {"image": "assets/images/carriers/DL.png", "name": "Emirates"},
    {"image": "assets/images/carriers/EK.png", "name": "Japan Airlines"},
    {"image": "assets/images/carriers/JL.png", "name": "Korea Air"},
    {"image": "assets/images/carriers/KE.png", "name": "Vietjet Air"},
    {"image": "assets/images/carriers/QH.png", "name": "Quatar Airways"},
    {"image": "assets/images/carriers/QR.png", "name": "Scoot"},
    {"image": "assets/images/carriers/TR.png", "name": "Uni Air"},
    {"image": "assets/images/carriers/UA.png", "name": "United Airlines"},
    {"image": "assets/images/carriers/VJ.png", "name": "Vietjet Air"},
    {"image": "assets/images/carriers/VN.png", "name": "Vietnam Airlines"},
  ];

  List<bool> choose_carriers;
  bool checkAll = false;
  int count = 0;

  List _selecteCategorysID = List();

  @override
  void initState() {
    super.initState();
    choose_carriers = List<bool>.filled(carriers.length, false);
  }

  // void _onRememberMeChanged

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
              "Carriers",
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
            child: InkWell(
              child: ListTile(
                title: Text(
                  "All",
                  style: TextStyle(
                    fontSize: 15,
                    color: kBlack,
                  ),
                ),
                onTap: () {
                  setState(() {
                    checkAll = !checkAll;
                    // choose_carriers = _selecteCategorysID;
                    // _selecteCategorysID.addAll(carriers);
                    // if (_selecteCategorysID == true) {
                    //   choose_carriers == true;
                    // } else {
                    //   _selecteCategorysID.clear();
                    // }
                    // for (var index = 0; index < choose_carriers.length; index++)
                    //   choose_carriers[index] = true;

                    if (checkAll == true) {
                      choose_carriers =
                          List<bool>.filled(carriers.length, true);
                      count = carriers.length;
                    } else {
                      choose_carriers =
                          List<bool>.filled(carriers.length, false);
                      count = 0;
                    }
                  });
                },
                trailing: checkAll == true
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
            ),
          ),
          ListView.builder(
            itemCount: carriers.length,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                        image: AssetImage(
                          carriers[index]["image"],
                        ),
                        width: displaySize(context).width * 0.1,
                        height: displaySize(context).height * 0.1,
                      ),
                      title: Text(
                        carriers[index]["name"],
                        style: TextStyle(
                          fontSize: 15,
                          color: kBlack,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          choose_carriers[index] = !choose_carriers[index];
                          if (choose_carriers[index]) {
                            count += 1;
                          } else {
                            count -= 1;
                          }

                          if (count == carriers.length) {
                            checkAll = true;
                          } else {
                            checkAll = false;
                          }
                        });
                      },
                      trailing: choose_carriers[index] == true
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
        ],
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
              // color: kGreenLight,
              // shape: new RoundedRectangleBorder(
              //     borderRadius: new BorderRadius.circular(30.0)),
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
