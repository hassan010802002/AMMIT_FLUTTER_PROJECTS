import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/add-passenger.dart';
import 'package:lywing/sizes_helpers.dart';

class Passengers extends StatefulWidget {
  @override
  _PassengersState createState() => _PassengersState();
}

class _PassengersState extends State<Passengers> {
  List<String> name = [
    "Ms.May Thao Nguyen",
    "Mr.Nguyen Nam Long",
    "Ms.Linh Thi Hoang",
    "Mr.Viet Quoc Hoang",
    "Mr.Dao Hung Than",
    "Ms.Dieu Quang Ly"
  ];

  List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(name.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 3.0,
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
            AppLocalizations.of(context).translate('Passengers'),
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
                    AppLocalizations.of(context).translate('Done'),
                    style: TextStyle(
                      fontSize: 17,
                      color: kBlack,
                    ),
                  ),
                )),
          ],
          backgroundColor: kWhite,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Add_Passenger()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: kBlue,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      MaterialIcons.person_add,
                      color: kWhite,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        AppLocalizations.of(context).translate('AddaPassenger'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 600,
              //ông không cho cái chiều cao cho listview, nên nó ko biết hiển thị ra đâu
              child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                      bottom: 15,
                    ),
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: kGrey300,
// spreadRadius: 6,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: CheckboxListTile(
                      title: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                name[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kBlack,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                '15/04/1996 |${AppLocalizations.of(context).translate('Passportor')}ID: 104710',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: kGrey400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      secondary: IconButton(
                        icon: Icon(
                          MaterialIcons.create,
                          color: kGrey400,
                        ),
                        onPressed: () {},
                      ),
                      // controlAffinity: ListTileControlAffinity.leading,
                      value: _isChecked[index],
                      onChanged: (val) {
                        setState(
                          () {
                            _isChecked[index] = val;
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
