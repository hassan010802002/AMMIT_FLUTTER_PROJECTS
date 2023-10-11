import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/home/home_screen.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class Confirm extends StatefulWidget {
  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  List name = ["Phong Van Nguyen Tran", "Phong Van Nguyen Tran"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
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
            AppLocalizations.of(context).translate('Confirm'),
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            //Payment successful!
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 15,
                right: 15,
              ),
              width: displaySize(context).width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image(
                      image: AssetImage('assets/icons/success.png'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('Paymentsuccessful!'),
                      style: TextStyle(
                        fontSize: 22,
                        color: kBlack,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      AppLocalizations.of(context).translate('textpay'),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: kGrey600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //Tong so tien
            Container(
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '1 x ${AppLocalizations.of(context).translate('Passengers')}',
                                  style: TextStyle(
                                    color: kGrey400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '\$112.36',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '1 x ${AppLocalizations.of(context).translate('Cabinbaggage')}',
                                  style: TextStyle(
                                    color: kGrey400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Free',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '1 x ${AppLocalizations.of(context).translate('Checkedbaggage')}',
                                  style: TextStyle(
                                    color: kGrey400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '\$7.23',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '1 x ${AppLocalizations.of(context).translate('Travelinsurance')}',
                                  style: TextStyle(
                                    color: kGrey400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '\$7.46',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '1 x ${AppLocalizations.of(context).translate('AirHelp+')}',
                                  style: TextStyle(
                                    color: kGrey400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '\$5.56',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '1 x ${AppLocalizations.of(context).translate('Plusservicepackage')}',
                                  style: TextStyle(
                                    color: kGrey400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '\$11.35',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '1 x ${AppLocalizations.of(context).translate('Passengers')}',
                                  style: TextStyle(
                                    color: kGrey400,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '\$112.36',
                                  style: TextStyle(
                                    color: kBlack,
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      border: Border.all(color: kGrey300, width: 1),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Icon(
                            MaterialIcons.error_outline,
                            size: ResponsiveFlutter.of(context).fontSize(3),
                            color: kBlue,
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '${AppLocalizations.of(context).translate('Total')}:',
                                style: TextStyle(fontSize: 12, color: kGrey400),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Text(
                                  '\$143.96',
                                  style: TextStyle(fontSize: 20, color: kBlack),
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

            Container(
              child: Column(
                children: [
                  for (var index in name)
                    Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                        left: 15,
                        right: 15,
                      ),
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 15,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          //Qr code
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/VJ-1.png'),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                'Vietjet Air',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                'Airbus 320',
                                                style: TextStyle(
                                                  fontSize: 11,
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
                                Container(
                                  child: Image(
                                    image:
                                        AssetImage('assets/icons/qrcode.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            height: 1,
                            decoration: BoxDecoration(
                              border: Border.all(color: kGrey300, width: 1),
                            ),
                          ),

                          //Thong tin chi tiet chuyen bay va khach hang
                          Container(
                            margin: EdgeInsets.only(
                              left: displaySize(context).width * 0.03,
                              right: displaySize(context).width * 0.03,
                              top: displaySize(context).height * 0.02,
                              bottom: displaySize(context).height * 0.02,
                            ),
                            child: Column(
                              children: <Widget>[
                                //Outbound
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          AppLocalizations.of(context)
                                              .translate('Outbound'),
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: kGrey500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '20 Mar, Mon',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: kGrey500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //Diem den va di
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                'HAN',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                'Hanoi Noi Bai',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  color: kGrey400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '1 ${AppLocalizations.of(context).translate('stop')}',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: kGrey400,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                'SIN',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                'Singapore, Changi',
                                                style: TextStyle(
                                                  fontSize: 11,
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

                                //Ngay gio
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                '9:35',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                'Mar 20, Mon',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  color: kGrey400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '12h30m',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: kGrey400,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Container(
                                              child: Text(
                                                '17:35',
                                                style: TextStyle(
                                                  fontSize: 22,
                                                  color: kBlack,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                'Mar 20, Mon',
                                                style: TextStyle(
                                                  fontSize: 11,
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

                                Container(
                                  margin: EdgeInsets.only(
                                    top: 20,
                                    bottom: 20,
                                  ),
                                  child: Dash(
                                    length: displaySize(context).width * 0.82,
                                    dashThickness: 1,
                                    dashGap: 1,
                                    dashColor: kGrey300,
                                  ),
                                ),

                                //Flight no: va  eTicket code:
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  '${AppLocalizations.of(context).translate('Flightno')}:',
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: kGrey400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  'VJ-230',
                                                  style: TextStyle(
                                                    fontSize: 22,
                                                    color: kBlack,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  '${AppLocalizations.of(context).translate('eTicketcode:')}:',
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: kGrey400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  'PGHRPW',
                                                  style: TextStyle(
                                                    fontSize: 22,
                                                    color: kBlack,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //Station: va Terminal:
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  '${AppLocalizations.of(context).translate('Station')}:',
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: kGrey400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  'Noi Bai',
                                                  style: TextStyle(
                                                    fontSize: 22,
                                                    color: kBlack,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  '${AppLocalizations.of(context).translate('Terminal')}:',
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: kGrey400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  'T2',
                                                  style: TextStyle(
                                                    fontSize: 22,
                                                    color: kBlack,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 20,
                                    bottom: 20,
                                  ),
                                  child: Dash(
                                    length: displaySize(context).width * 0.82,
                                    dashThickness: 1,
                                    dashGap: 1,
                                    dashColor: kGrey300,
                                  ),
                                ),

                                //Passenger name:
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          AppLocalizations.of(context)
                                              .translate('Passengername:'),
                                          style: TextStyle(
                                            color: kBlack,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '$index',
                                          style: TextStyle(
                                            color: kBlack,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //Baggage: va Classs:
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      //Baggage
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 5,
                                                ),
                                                child: Text(
                                                  AppLocalizations.of(context)
                                                      .translate('Baggage'),
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: kGrey400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Container(
                                                      child: Text(
                                                        '1 x 78x28x52, 20kg',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: kBlack,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Text(
                                                        AppLocalizations.of(
                                                                context)
                                                            .translate(
                                                                'Classes'),
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: kBlack,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                      //Classs
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 10,
                                                ),
                                                child: Text(
                                                  'Classs:',
                                                  style: TextStyle(
                                                    fontSize: 11,
                                                    color: kGrey400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  'Economy',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: kBlack,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            height: 1,
                            decoration: BoxDecoration(
                              border: Border.all(color: kGrey300, width: 1),
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.all(15),
                            alignment: Alignment.centerRight,
                            child: Text(
                              '${AppLocalizations.of(context).translate('Bookingnumber')}: 53422',
                              style: TextStyle(
                                fontSize: 13,
                                color: kBlack,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),

            // Go to home
            Container(
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 40,
                bottom: 30,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home_Screen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: kBlue,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0)),
                  elevation: 0,
                  minimumSize: Size(
                    500,
                    displaySize(context).height * 0.05,
                  ),
                ),
                child: Text(
                  AppLocalizations.of(context).translate('Gotohome'),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: kWhite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
