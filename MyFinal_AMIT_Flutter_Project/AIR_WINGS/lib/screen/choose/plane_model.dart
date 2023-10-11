import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class Plane_Model extends StatefulWidget {
  @override
  _Plane_ModelState createState() => _Plane_ModelState();
}

class _Plane_ModelState extends State<Plane_Model> {
  List<Map<String, dynamic>> Plane_Model = [
    {"name": "Any", "price": ""},
    {"name": "Mid size Aircrafts", "price": "\$399"},
    {"name": "Large Aircrafts", "price": "\$459"},
  ];

  List<bool> choose_Plane_Model;

  @override
  void initState() {
    super.initState();
    choose_Plane_Model = List.generate(Plane_Model.length, (i) => false);
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
          itemCount: Plane_Model.length,
          itemBuilder: (context, index) {
            return Container(
              child: ListTile(
                title: Text(
                  Plane_Model[index]['name'],
                  style: TextStyle(
                    color: kBlack,
                    fontSize: 15,
                  ),
                ),
                subtitle: Text(
                  Plane_Model[index]['price'],
                  style: TextStyle(
                    color: kGrey500,
                    fontSize: 15,
                  ),
                ),
                trailing: InkWell(
                  child: choose_Plane_Model[index] == true
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
                    for (int i = 0; i < Plane_Model.length; i++) {
                      if (i == index) {
                        choose_Plane_Model[index] = true;
                      } else {
                        choose_Plane_Model[i] = false;
                      }
                    }
                  });
                },
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
