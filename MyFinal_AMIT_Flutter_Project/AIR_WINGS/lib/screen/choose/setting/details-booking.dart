import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/screen/choose/setting/qr-code.dart';
import 'package:lywing/sizes_helpers.dart';

class Details_Booking extends StatefulWidget {
  @override
  _Details_BookingState createState() => _Details_BookingState();
}

class _Details_BookingState extends State<Details_Booking> {
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
      body: ListView(
        children: <Widget>[
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
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Image(
                                image: AssetImage('assets/images/VJ-1.png'),
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
                        child: InkWell(
                          child: Image(
                            image: AssetImage('assets/icons/qrcode.png'),
                            fit: BoxFit.cover,
                          ),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Qr_Code()),
                            );
                          },
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
                  margin: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      //Outbound
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Outbound',
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                '1 stop',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: kGrey400,
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(
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
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'Flight no:',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'eTicket code:',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'Station:',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'Terminal:',
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child:  Text(
                                'Passenger name:',
                                style: TextStyle(
                                  color: kBlack,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'PHONG VAN NGUYEN TRAN',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 5,
                                      ),
                                      child: Text(
                                        'Baggage:',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: kGrey400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                              '1 x 56x23x36, 7kg',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    'Booking number: 53422',
                    style: TextStyle(
                      fontSize: 13,
                      color: kBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),

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
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Image(
                                image: AssetImage('assets/images/VJ-1.png'),
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
                          image: AssetImage('assets/icons/qrcode.png'),
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
                  margin: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 20,
                    bottom: 20,
                  ),
                  child: Column(
                    children: <Widget>[
                      //Outbound
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Text(
                                'Outbound',
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                '1 stop',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: kGrey400,
                                ),
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              child: Column(
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
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'Flight no:',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'eTicket code:',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'Station:',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Text(
                                        'Terminal:',
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child:  Text(
                                'Passenger name:',
                                style: TextStyle(
                                  color: kBlack,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                'PHONG VAN NGUYEN TRAN',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 5,
                                      ),
                                      child: Text(
                                        'Baggage:',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: kGrey400,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                              '1 x 56x23x36, 7kg',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    'Booking number: 53422',
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
    );
  }
}
