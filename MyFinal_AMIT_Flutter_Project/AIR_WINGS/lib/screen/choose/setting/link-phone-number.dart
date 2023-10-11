import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';

import 'phone-verification.dart';

class Link_Phone_Number extends StatefulWidget {
  @override
  _Link_Phone_NumberState createState() => _Link_Phone_NumberState();
}

class _Link_Phone_NumberState extends State<Link_Phone_Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: kBlack,
            ),
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('LinkPhoneNumber'),
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
        children: [
          Container(
            margin: EdgeInsets.only(
              top: displaySize(context).height * 0.07,
              left: displaySize(context).width * 0.05,
              right: displaySize(context).width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: AutoSizeText(
                    AppLocalizations.of(context)
                        .translate('Pleaseenteraphonenumber'),
                    style: TextStyle(
                      color: kGrey600,
                    ),
                    presetFontSizes: [15, 12, 9, 6],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: displaySize(context).height * 0.04,
                    bottom: displaySize(context).height * 0.03,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          AppLocalizations.of(context).translate('Phonenumber'),
                          style: TextStyle(
                            fontSize: 11,
                            color: kGrey400,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(),
                        child: IntlPhoneField(
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: kGrey500,
                              ),
                            ),
                            hintText: 'Enter phone number',
                          ),
                          initialCountryCode: 'VN',
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Phone_Verification("+0869192945")),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: kBlue,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(7.0),
                      ),
                      minimumSize: Size(
                        500,
                        displaySize(context).height * 0.05,
                      ),
                    ),
                    child: AutoSizeText(
                      AppLocalizations.of(context).translate('Next'),
                      style: TextStyle(
                        color: kWhite,
                      ),
                      presetFontSizes: [15, 12, 9, 6],
                    ),
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
