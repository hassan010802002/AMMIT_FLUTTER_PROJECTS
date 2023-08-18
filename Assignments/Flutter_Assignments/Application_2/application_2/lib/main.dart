import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:cached_network_image/cached_network_image.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              borderOnForeground: false,
              elevation: 5,
              child: Container(
                width: double.infinity,
                height: 350,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0 , 0.2),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                  image: DecorationImage(image: NetworkImage(
                    "https://static.vecteezy.com/system/resources/thumbnails/006/712/985/small/abstract-health-medical-science-healthcare-icon-digital-technology-science-concept-modern-innovation-treatment-medicine-on-hi-tech-future-blue-background-for-wallpaper-template-web-design-vector.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(5),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: ClipOval(
                        child: Image.network(
                          "https://wallpapers.com/images/hd/instagram-profile-pictures-ut4t3clnp7r84i2x.jpg",
                          fit: BoxFit.fill,
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "Hi, Hassan",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255 , 1),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        left: 5.0,
                        right: 5.0,
                        bottom: 5.0
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 25.0,
                            color: Color.fromRGBO(40, 40, 40, 1),
                          ),
                          contentPadding: const EdgeInsets.all(8.0),
                          filled: true,
                          fillColor: const Color.fromRGBO(231, 231, 231, 1),
                          hintText: "What Healthcare Service do you Need today ?",
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(87, 99, 108, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            fontFamily: "Noto Sans",
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        maxLines: 1,
                        style: const TextStyle(
                          color: Colors.black,
                          fontFamily: "Noto Sans",
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                child: Material(
                  color: Colors.transparent,
                  elevation: 5,
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xFFDFDFDF),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                          spreadRadius: 5,
                        )
                      ],
                    ),
                    alignment: const AlignmentDirectional(0, -1),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                            spreadRadius: 2,
                                          )
                                        ],
                                        gradient: const LinearGradient(
                                          colors: [Color(0xFF53ABEC), Color(0xFF50EBD7)],
                                          stops: [0, 1],
                                          begin: AlignmentDirectional(0, -1),
                                          end: AlignmentDirectional(0, 1),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 5, 5),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.asset(
                                                  'assets/images/pngegg(1).png',
                                                  width: 50,
                                                  height: 50,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              'Appointments',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color.fromRGBO(0, 60, 130, 1),
                                                fontFamily: "Roboto Condensed",
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ]
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                            spreadRadius: 2,
                                          )
                                        ],
                                        gradient: const LinearGradient(
                                          colors: [Color(0xFF53ABEC), Color(0xFF50EBD7)],
                                          stops: [0, 1],
                                          begin: AlignmentDirectional(0, -1),
                                          end: AlignmentDirectional(0, 1),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 5, 5),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.asset(
                                                  'assets/images/medicine.png',
                                                  width: 50,
                                                  height: 50,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              'Medicines',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(0, 60, 130, 1),
                                                  fontFamily: "Roboto Condensed",
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ]
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                            spreadRadius: 2,
                                          )
                                        ],
                                        gradient: const LinearGradient(
                                          colors: [Color(0xFF53ABEC), Color(0xFF50EBD7)],
                                          stops: [0, 1],
                                          begin: AlignmentDirectional(0, -1),
                                          end: AlignmentDirectional(0, 1),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 5, 5),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.asset(
                                                  'assets/images/report.png',
                                                  width: 50,
                                                  height: 50,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              'Reports',
                                              textAlign: TextAlign.center,
                                              style:TextStyle(
                                                  color: Color.fromRGBO(0, 60, 130, 1),
                                                  fontFamily: "Roboto Condensed",
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ]
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                            spreadRadius: 2,
                                          )
                                        ],
                                        gradient: const LinearGradient(
                                          colors: [Color(0xFF53ABEC), Color(0xFF50EBD7)],
                                          stops: [0, 1],
                                          begin: AlignmentDirectional(0, -1),
                                          end: AlignmentDirectional(0, 1),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 5, 5),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.asset(
                                                  'assets/images/bill-payment.1024x1024.png',
                                                  width: 50,
                                                  height: 50,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              'Billings',
                                              textAlign: TextAlign.center,
                                              style:TextStyle(
                                                  color: Color.fromRGBO(0, 60, 130, 1),
                                                  fontFamily: "Roboto Condensed",
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ]
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 2),
                                            spreadRadius: 2,
                                          )
                                        ],
                                        gradient: const LinearGradient(
                                          colors: [Color(0xFF53ABEC), Color(0xFF50EBD7)],
                                          stops: [0, 1],
                                          begin: AlignmentDirectional(0, -1),
                                          end: AlignmentDirectional(0, 1),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding:
                                        const EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 5, 5),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.asset(
                                                  'assets/images/Johanchalibert-Mac-Osx-Yosemite-Messages.512.png',
                                                  width: 50,
                                                  height: 50,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              'Messages',
                                              textAlign: TextAlign.center,
                                              style:TextStyle(
                                                  color: Color.fromRGBO(0, 60, 130, 1),
                                                  fontFamily: "Roboto Condensed",
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w500
                                              ),
                                            ),
                                          ]
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(

                              elevation: MaterialStatePropertyAll(2.0),
                              backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(0, 181, 199, 0.3)
                              ),
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0
                                  )
                              ),
                              fixedSize: MaterialStatePropertyAll(Size(230, 55)),

                            ),
                            // options: FFButtonOptions(
                            //   width: 230,
                            //   height: 55,
                            //   padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                            //   iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            //   color: const Color(0x4D00B5C7),
                            //   textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                            //     fontFamily: 'Montserrat',
                            //     color: Colors.black,
                            //     fontSize: 18,
                            //     fontWeight: FontWeight.w600,
                            //   ),
                            //   elevation: 2,
                            //   borderSide: const BorderSide(
                            //     color: Colors.transparent,
                            //   ),
                            //   borderRadius: BorderRadius.circular(15),
                            // ),
                            child: const Text(
                              "Log Out",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: "Montserrat",
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  ));
}


