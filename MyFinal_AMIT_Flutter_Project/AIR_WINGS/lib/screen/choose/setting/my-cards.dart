import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class My_Cards extends StatefulWidget {
  @override
  _My_CardsState createState() => _My_CardsState();
}

class _My_CardsState extends State<My_Cards> {
  List image = ["assets/icons/visa-pay-logo.png","assets/icons/lens-2.png","assets/icons/visa-pay-logo.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
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
            AppLocalizations.of(context).translate('MyCards'),
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: [
                for(var index in image) Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                    bottom: 30,
                  ),
                  decoration: BoxDecoration(
                    color: kWhite,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 0.1,
                      color: kGrey300,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: kGrey100,
                        blurRadius: 10,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  margin: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Image(
                          image: AssetImage('$index'),
                        ),
                      ),
                      SizedBox(
                        height: displaySize(context).height * 0.1,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Image(
                                image: AssetImage('assets/icons/lens-4.png'),
                              ),
                            ),
                            Container(
                              child: Image(
                                image: AssetImage('assets/icons/lens-4.png'),
                              ),
                            ),
                            Container(
                              child: Image(
                                image: AssetImage('assets/icons/lens-4.png'),
                              ),
                            ),
                            Container(
                              child: Text(
                                '2 3 5 2',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: kGrey400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
