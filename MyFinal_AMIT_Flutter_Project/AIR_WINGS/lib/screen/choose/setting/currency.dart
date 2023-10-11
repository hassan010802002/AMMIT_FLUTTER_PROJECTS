import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

class Currency extends StatefulWidget {
  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  List<Map<String, dynamic>> currency_unit = [
    {"currency": "USD - United States Dollar (\$)"},
    {"currency": "EUR - Euro (\€)"},
    {"currency": "SGD - Singapore Dollar (S\$)"},
    {"currency": "HKD - Hong Kong Dollar (HK\$)"},
    {"currency": "JPY - Japanese Yen (¥)"},
    {"currency": "KRW - Korean Won (₩)"},
    {"currency": "IDR - Indian Rupee (₹)"},
    {"currency": "CNY - Chinese Yuan (¥)"},
    {"currency": "BRL - Brazilian Real (R\$)"},
    {"currency": "CAD - Canadian Dollar (C\$)"},
    {"currency": "GBP - British Pound (£)"},
    {"currency": "IDR - Indonesian Rupiah (Rp)"},
    {"currency": "MXN - Mexican Peso (Mex\$‎)"},
  ];

  List<bool> choose_currency;

  @override
  void initState() {
    super.initState();
    choose_currency = List.generate(currency_unit.length, (i) => false);
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
              "Currency",
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
          itemCount: currency_unit.length,
          itemBuilder: (BuildContext context, index) {
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
                          choose_currency[index] == true
                              ? Text(
                                  currency_unit[index]["currency"],
                                  // Goi cai truoc dau 2 cham ra, index la thu tu cua phan tu nhung sa no chi cos 2
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlue,
                                  ),
                                )
                              : Text(
                                  currency_unit[index]["currency"],
                                  // Goi cai truoc dau 2 cham ra, index la thu tu cua phan tu nhung sa no chi cos 2
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBlack,
                                  ),
                                ),
                          choose_currency[index] == true
                              ? Icon(Icons.done, color: kBlue)
                              : Container(),
                        ],
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        for (int i = 0; i < currency_unit.length; i++) {
                          if (i == index) {
                            choose_currency[index] = true;
                          } else {
                            choose_currency[i] = false;
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
