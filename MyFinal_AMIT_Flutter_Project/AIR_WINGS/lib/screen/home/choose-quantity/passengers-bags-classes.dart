// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:air_wings/common/app_localizations.dart';
import 'package:air_wings/common/constants/colors.dart';
import 'package:air_wings/screen/home/SysManager.dart';
import 'package:air_wings/sizes_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinbox/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Passengers_Bags_Classes extends StatefulWidget {
  const Passengers_Bags_Classes({super.key});

  @override
  _Passengers_Bags_ClassesState createState() => _Passengers_Bags_ClassesState();
}

class _Passengers_Bags_ClassesState extends State<Passengers_Bags_Classes> {
  int? value1 = 1;
  int? value2 = 1;
  int? value3 = 1;

  int? selectedRadio;
  int? economy = 1;
  int? preEconomy = 2;
  int? business = 3;

  loadData() async {
    // Dùng khi xét giá trị dữ liệu cần lưu khi tắt ứng dụng
    // Dùng khi ứng dụng đươc mở
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Gán giá trị theo key "adults"
      prefs.setInt("adults", value1!);
      // Lấy giá trị từ key "adults" đã xét
      value1 = prefs.getInt("adults");
      prefs.setInt("infants", value2!);
      value2 = prefs.getInt("infants");
      prefs.setInt("checkedbags", value3!);
      value3 = prefs.getInt("checkedbags");
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  void type() {
    showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor: kWhite,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      builder: (BuildContext context) {
        return BottomSheet(
          onClosing: () {
            setState(() {});
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter mystate) => Container(
                height: displaySize(context).height * 0.7,
                margin: EdgeInsets.only(
                  top: displaySize(context).height * 0.03,
                  left: displaySize(context).width * 0.07,
                  right: displaySize(context).width * 0.07,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Passengers
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context)!.translate('Passengers')!,
                          style: TextStyle(
                            fontSize: ResponsiveFlutter.of(context).fontSize(2),
                            color: kBlack,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: ResponsiveFlutter.of(context).hp(2),
                            bottom: ResponsiveFlutter.of(context).hp(2),
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        Icons.person,
                                        color: kGrey400,
                                        size: 25,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: displaySize(context).width * 0.01,
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.translate('Adults')!,
                                          style: TextStyle(
                                            fontSize: ResponsiveFlutter.of(context).fontSize(1.7),
                                            color: kGrey600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      width: 150,
                                      child: CupertinoSpinBox(
                                        decoration: const BoxDecoration(
                                          color: kWhite,
                                        ),
                                        textStyle: const TextStyle(
                                          color: kGrey600,
                                        ),
                                        min: 1,
                                        max: 100,
                                        value: value1!.toDouble(),
                                        onChanged: (value) {
                                          mystate(() {
                                            value1 = value.toInt();
                                            loadData();
                                          });
                                        },
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        Icons.child_friendly_sharp,
                                        size: 20,
                                        color: kGrey400,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: displaySize(context).width * 0.01,
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.translate('Infants')!,
                                          style: TextStyle(
                                            fontSize: ResponsiveFlutter.of(context).fontSize(1.7),
                                            color: kGrey600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: CupertinoSpinBox(
                                      decoration: const BoxDecoration(
                                        color: kWhite,
                                      ),
                                      textStyle: const TextStyle(
                                        color: kGrey600,
                                      ),
                                      min: 1,
                                      max: 100,
                                      value: value2!.toDouble(),
                                      onChanged: (value) {
                                        mystate(
                                          () {
                                            value2 = value.toInt();
                                            FileSystemManager.instance.infants = value2;
                                            loadData();
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Bags
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context)!.translate('Bags')!,
                          style: TextStyle(
                            fontSize: ResponsiveFlutter.of(context).fontSize(2),
                            color: kBlack,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: ResponsiveFlutter.of(context).hp(2),
                            bottom: ResponsiveFlutter.of(context).hp(2),
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        FontAwesomeIcons.suitcase,
                                        size: 15,
                                        color: kGrey400,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.translate('checkedBags')!,
                                          style: TextStyle(
                                            fontSize: ResponsiveFlutter.of(context).fontSize(1.7),
                                            color: kGrey600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: CupertinoSpinBox(
                                      decoration: const BoxDecoration(
                                        color: kWhite,
                                      ),
                                      textStyle: const TextStyle(
                                        color: kGrey600,
                                      ),
                                      min: 1,
                                      max: 100,
                                      value: value3!.toDouble(),
                                      onChanged: (value) {
                                        mystate(() {
                                          value3 = value.toInt();
                                          FileSystemManager.instance.bags = value3;
                                          loadData();
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Classes
                    Container(
                      margin: EdgeInsets.only(
                        bottom: ResponsiveFlutter.of(context).hp(2),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.translate('Classes')!,
                        style: TextStyle(
                          fontSize: ResponsiveFlutter.of(context).fontSize(2),
                          color: kBlack,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                          onTap: () {
                            setSelectedRadio(economy!);
                            FileSystemManager.instance.temp = economy;
                          },
                          leading: const Icon(
                            Icons.radio_button_checked,
                            color: kBlue,
                          ),
                          // Radio(
                          //   value: economy,
                          //   groupValue: FileSystemManager.instance.temp,
                          //   activeColor: Colors.blue,
                          //   onChanged: (val){
                          //     mystate(() {
                          //       setSelectedRadio(economy);
                          //     });
                          //   },
                          // ),
                          title: const Text("Economy"),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                          onTap: () {
                            setSelectedRadio(preEconomy!);
                            FileSystemManager.instance.temp = preEconomy;
                          },
                          leading: const Icon(
                            Icons.radio_button_off,
                          ),
                          // Radio(
                          //   value: preEconomy,
                          //   groupValue: FileSystemManager.instance.temp,
                          //   activeColor: Colors.blue,
                          //   onChanged: (val) {
                          //     mystate(() {
                          //       setSelectedRadio(preEconomy);
                          //     });
                          //   },
                          // ),
                          title: const Text("Premium Economy"),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                          onTap: () {
                            setSelectedRadio(business!);
                            FileSystemManager.instance.temp = business;
                          },
                          leading: const Icon(
                            Icons.radio_button_off,
                          ),
                          // Radio(
                          //   value: business,
                          //   groupValue: FileSystemManager.instance.temp,
                          //   activeColor: Colors.blue,
                          //   onChanged: (val) {
                          //     mystate(() {
                          //       setSelectedRadio(business);
                          //     });
                          //   },
                          // ),
                          title: const Text("Business"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        type();
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ), backgroundColor: kGrey200,
        elevation: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(
                  right: 2,
                ),
                child: const Icon(
                  Icons.supervisor_account,
                  size: 20,
                  color: kGrey600,
                ),
              ),
              Text(
                value1.toString(),
                style: const TextStyle(
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
                  right: 2,
                ),
                child: const Icon(
                  Icons.child_friendly_sharp,
                  size: 20,
                  color: kGrey600,
                ),
              ),
              Text(
                value2.toString(),
                style: const TextStyle(
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
                  right: 2,
                ),
                child: const Icon(
                  FontAwesomeIcons.suitcase,
                  size: 15,
                  color: kGrey600,
                ),
              ),
              Text(
                value3.toString(),
                style: const TextStyle(
                  fontSize: 15,
                  color: kGrey600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Passengers_Bags_Classes1 extends StatefulWidget {
  const Passengers_Bags_Classes1({super.key});

  @override
  _Passengers_Bags_Classes1State createState() => _Passengers_Bags_Classes1State();
}

class _Passengers_Bags_Classes1State extends State<Passengers_Bags_Classes1> {
  int? value1 = 1;
  int? value2 = 1;
  int? value3 = 1;

  int? selectedRadio;
  int? economy = 1;
  int? preEconomy = 2;
  int? business = 3;

  loadData() async {
    // Dùng khi xét giá trị dữ liệu cần lưu khi tắt ứng dụng
    // Dùng khi ứng dụng đươc mở
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      // Gán giá trị theo key "adults"
      prefs.setInt("adults", value1!);
      // Lấy giá trị từ key "adults" đã xét
      value1 = prefs.getInt("adults")!;
      prefs.setInt("infants", value2!);
      value2 = prefs.getInt("infants")!;
      prefs.setInt("checkedbags", value3!);
      value3 = prefs.getInt("checkedbags")!;
    });
  }

  loadPreData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      value1 = prefs.getInt("adults")!;
      value2 = prefs.getInt("infants")!;
      value3 = prefs.getInt("checkedbags")!;
    });
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadPreData();
    selectedRadio = 0;
  }

  void type() {
    showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor: kWhite,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      builder: (BuildContext context) {
        return BottomSheet(
          onClosing: () {
            setState(() {});
          },
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (BuildContext context, StateSetter mystate) => Container(
                height: displaySize(context).height * 0.7,
                margin: EdgeInsets.only(
                  top: displaySize(context).height * 0.03,
                  // bottom: displaySize(context).height * 0.03,
                  left: displaySize(context).width * 0.07,
                  right: displaySize(context).width * 0.07,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Passengers
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context)!.translate('Passengers')!,
                          style: TextStyle(
                            fontSize: ResponsiveFlutter.of(context).fontSize(2),
                            color: kBlack,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: ResponsiveFlutter.of(context).hp(2),
                            bottom: ResponsiveFlutter.of(context).hp(2),
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        Icons.person,
                                        color: kGrey400,
                                        size: 25,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: displaySize(context).width * 0.01,
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.translate('Adults')!,
                                          style: TextStyle(
                                            fontSize: ResponsiveFlutter.of(context).fontSize(1.7),
                                            color: kGrey600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      width: 150,
                                      child: CupertinoSpinBox(
                                        decoration: const BoxDecoration(
                                          color: kWhite,
                                        ),
                                        textStyle: const TextStyle(
                                          color: kGrey600,
                                        ),
                                        min: 1,
                                        max: 100,
                                        value: value1!.toDouble(),
                                        onChanged: (value) {
                                          mystate(() {
                                            value1 = value.toInt();
                                            loadData();
                                          });
                                        },
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        Icons.child_friendly_sharp,
                                        size: 20,
                                        color: kGrey400,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: displaySize(context).width * 0.01,
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.translate('Infants')!,
                                          style: TextStyle(
                                            fontSize: ResponsiveFlutter.of(context).fontSize(1.7),
                                            color: kGrey600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: CupertinoSpinBox(
                                      decoration: const BoxDecoration(
                                        color: kWhite,
                                      ),
                                      textStyle: const TextStyle(
                                        color: kGrey600,
                                      ),
                                      min: 1,
                                      max: 100,
                                      value: value2!.toDouble(),
                                      onChanged: (value) {
                                        mystate(
                                          () {
                                            value2 = value.toInt();
                                            FileSystemManager.instance.infants = value2;
                                            loadData();
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Bags
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context)!.translate('Bags')!,
                          style: TextStyle(
                            fontSize: ResponsiveFlutter.of(context).fontSize(2),
                            color: kBlack,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: ResponsiveFlutter.of(context).hp(2),
                            bottom: ResponsiveFlutter.of(context).hp(2),
                          ),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Icon(
                                        FontAwesomeIcons.suitcase,
                                        size: 15,
                                        color: kGrey400,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                          left: 15,
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.translate('checkedBags')!,
                                          style: TextStyle(
                                            fontSize: ResponsiveFlutter.of(context).fontSize(1.7),
                                            color: kGrey600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: CupertinoSpinBox(
                                      decoration: const BoxDecoration(
                                        color: kWhite,
                                      ),
                                      textStyle: const TextStyle(
                                        color: kGrey600,
                                      ),
                                      min: 1,
                                      max: 100,
                                      value: value3!.toDouble(),
                                      onChanged: (value) {
                                        mystate(() {
                                          value3 = value.toInt();
                                          FileSystemManager.instance.bags = value3;
                                          loadData();
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // Classes
                    Container(
                      margin: EdgeInsets.only(
                        bottom: ResponsiveFlutter.of(context).hp(2),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.translate('Classes')!,
                        style: TextStyle(
                          fontSize: ResponsiveFlutter.of(context).fontSize(2),
                          color: kBlack,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                          onTap: () {
                            setSelectedRadio(economy!);
                            FileSystemManager.instance.temp = economy;
                          },
                          leading: const Icon(
                            Icons.radio_button_checked,
                            color: kBlue,
                          ),
                          // Radio(
                          //   value: economy,
                          //   groupValue: FileSystemManager.instance.temp,
                          //   activeColor: Colors.blue,
                          //   onChanged: (val){
                          //     mystate(() {
                          //       setSelectedRadio(economy);
                          //     });
                          //   },
                          // ),
                          title: const Text("Economy"),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                          onTap: () {
                            setSelectedRadio(preEconomy!);
                            FileSystemManager.instance.temp = preEconomy;
                          },
                          leading: const Icon(
                            Icons.radio_button_off,
                          ),
                          // Radio(
                          //   value: preEconomy,
                          //   groupValue: FileSystemManager.instance.temp,
                          //   activeColor: Colors.blue,
                          //   onChanged: (val) {
                          //     mystate(() {
                          //       setSelectedRadio(preEconomy);
                          //     });
                          //   },
                          // ),
                          title: const Text("Premium Economy"),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
                          onTap: () {
                            setSelectedRadio(business!);
                            FileSystemManager.instance.temp = business;
                          },
                          leading: const Icon(
                            Icons.radio_button_off,
                          ),
                          // Radio(
                          //   value: business,
                          //   groupValue: FileSystemManager.instance.temp,
                          //   activeColor: Colors.blue,
                          //   onChanged: (val) {
                          //     mystate(() {
                          //       setSelectedRadio(business);
                          //     });
                          //   },
                          // ),
                          title: const Text("Business"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        type();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              right: 5,
            ),
            child: Row(
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
                Text(
                  value1 == null ? "0" : value1.toString(),
                  style: const TextStyle(
                    fontSize: 15,
                    color: kGrey600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              right: 5,
            ),
            child: Row(
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
                Text(
                  value2 == null ? "0" : value2.toString(),
                  style: const TextStyle(
                    fontSize: 15,
                    color: kGrey600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              right: 5,
            ),
            child: Row(
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
                Text(
                  value3 == null ? "0" : value3.toString(),
                  style: const TextStyle(
                    fontSize: 15,
                    color: kGrey600,
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
