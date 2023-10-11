import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Untis extends StatefulWidget {
  @override
  _UntisState createState() => _UntisState();
}

class _UntisState extends State<Untis> {
  List<Map<String, dynamic>> untis = [
    {"untis": "Metric (km, m²)"},
    {"untis": "Imperial (miles, ft²)"},
  ];

  List<bool> choose_untis;

  @override
  void initState() {
    super.initState();
    choose_untis = List.generate(untis.length, (i) => false);
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
              "Untis",
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
          itemCount: untis.length, // cho ty dang run lai me no bij sao the nay
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
                          choose_untis[index] == true
                              ? Text(
                                  untis[index][
                                      "untis"], // Goi cai truoc dau 2 cham ra, index la thu tu cua phan tu nhung sa no chi cos 2
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlue,
                                  ),
                                )
                              : Text(
                                  untis[index][
                                      "untis"], // Goi cai truoc dau 2 cham ra, index la thu tu cua phan tu nhung sa no chi cos 2
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                          choose_untis[index] == true
                              ? Icon(Icons.done, color: kBlue)
                              : Container(),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < untis.length; i++) {
                          if (i == index) {
                            choose_untis[index] = true;
                          } else {
                            choose_untis[i] = false;
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
