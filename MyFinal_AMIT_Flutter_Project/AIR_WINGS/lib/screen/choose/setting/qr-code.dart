

import 'package:flutter/material.dart';
import 'package:lywing/common/constants.dart';

class Qr_Code extends StatefulWidget {
  @override
  _Qr_CodeState createState() => _Qr_CodeState();
}

class _Qr_CodeState extends State<Qr_Code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: kBlack,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            'Details Booking',
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
    );
  }
}
