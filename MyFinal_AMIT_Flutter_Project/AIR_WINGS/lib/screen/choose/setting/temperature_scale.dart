import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Temperature_Scale extends StatefulWidget {
  @override
  _Temperature_ScaleState createState() => _Temperature_ScaleState();
}

class _Temperature_ScaleState extends State<Temperature_Scale> {
  List<Map<String, dynamic>> temperature_scale = [
    {"temperature": "Celsius (°C)"},
    {"temperature": "Fahrenheit (°F)"},
  ];

  List<bool> choose_temperature_scale;

  @override
  void initState() {
    super.initState();
    choose_temperature_scale =
        List.generate(temperature_scale.length, (i) => false);
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
              "Temperature Scale",
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
          itemCount: temperature_scale
              .length, // cho ty dang run lai me no bij sao the nay
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
                          choose_temperature_scale[index] == true
                              ? Text(
                                  temperature_scale[index][
                                      "temperature"], // Goi cai truoc dau 2 cham ra, index la thu tu cua phan tu nhung sa no chi cos 2
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlue,
                                  ),
                                )
                              : Text(
                                  temperature_scale[index][
                                      "temperature"], // Goi cai truoc dau 2 cham ra, index la thu tu cua phan tu nhung sa no chi cos 2
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                          choose_temperature_scale[index] == true
                              ? Icon(Icons.done, color: kBlue)
                              : Container(),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < temperature_scale.length; i++) {
                          if (i == index) {
                            choose_temperature_scale[index] = true;
                          } else {
                            choose_temperature_scale[i] = false;
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
