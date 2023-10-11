import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class Class extends StatefulWidget {
  @override
  _ClassState createState() => _ClassState();
}

class _ClassState extends State<Class> {
  List<Map<String, dynamic>> Class = [
    {"name": "Economy/Premium Economy"},
    {"name": "Premium Economy"},
    {"name": "Business/First"},
    {"name": "Business"},
    {"name": "First"},
  ];

  List<bool> choose_Class;

  @override
  void initState() {
    super.initState();
    choose_Class = List.generate(Class.length, (i) => false);
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
              AppLocalizations.of(context).translate('Class'),
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
                    // elevation: 0,
                    // highlightElevation: 0,
                    // splashColor: kWhite,
                    // color: kWhite,
                    // highlightColor: kWhite,
                    style: ElevatedButton.styleFrom(
                      primary: kWhite,
                      elevation: 0,
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
          top: displaySize(context).height * 0.05,
        ),
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
        child: ListView.builder(
          itemCount: Class.length, // cho ty dang run lai me no bij sao the nay
          itemBuilder: (context, index) {
            return Container(
              color: kWhite,
              child: Column(
                children: [
                  ListTile(
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
                          choose_Class[index] == true
                              ? Text(
                                  Class[index]["name"],
                                  // Goi cai truoc dau 2 cham ra, index la thu tu cua phan tu nhung sa no chi cos 2
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlue,
                                  ),
                                )
                              : Text(
                                  Class[index]["name"],
                                  // Goi cai truoc dau 2 cham ra, index la thu tu cua phan tu nhung sa no chi cos 2
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                          choose_Class[index] == true
                              ? Icon(Icons.done, color: kBlue)
                              : Container(),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < Class.length; i++) {
                          if (i == index) {
                            choose_Class[index] = true;
                          } else {
                            choose_Class[i] = false;
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
                AppLocalizations.of(context).translate('login'),
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
