import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // androidlarge1dzf (1:2)
        padding: EdgeInsets.fromLTRB(24*fem, 33*fem, 25*fem, 44*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // phm (4:5)
              margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 6*fem),
              width: 163*fem,
              height: 160*fem,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80*fem),
                child: Image.asset(
                  'assets/page-1/images/.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              // autogroupntbhJN3 (7vt4uWhUiX4egZv82bNtBH)
              margin: EdgeInsets.fromLTRB(35.5*fem, 0*fem, 33.5*fem, 13*fem),
              width: double.infinity,
              height: 83.5*fem,
              child: Stack(
                children: [
                  Positioned(
                    // hassansaiedhassan1nF (4:7)
                    left: 0*fem,
                    top: 0*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 242*fem,
                          height: 52*fem,
                          child: Text(
                            'Hassan Saied Hassan',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inknut Antiqua',
                              fontSize: 20*ffem,
                              fontWeight: FontWeight.w700,
                              height: 2.5775*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // hassansaiedEf1 (4:8)
                    left: 71*fem,
                    top: 29*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 97*fem,
                          height: 31*fem,
                          child: Text(
                            '@hassansaied',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inknut Antiqua',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 2.5775*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // xc4c16o545b21aKAf (4:10)
                    left: 49.5*fem,
                    top: 52.5*fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 120*fem,
                          height: 31*fem,
                          child: Text(
                            '0xc4c16o545_b21a',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inknut Antiqua',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 2.5775*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // copyiconpng91npw (4:11)
                    left: 190.5*fem,
                    top: 53*fem,
                    child: Align(
                      child: SizedBox(
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/page-1/images/copy-icon-png-9-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupvz2xWkw (7vt57kr5RyVzuFsajaVZ2X)
              margin: EdgeInsets.fromLTRB(73*fem, 0*fem, 73*fem, 6.5*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    // 2DV (4:12)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                      child: Text(
                        '5000',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Inknut Antiqua',
                          fontSize: 28*ffem,
                          fontWeight: FontWeight.w900,
                          height: 2.5775*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    // followersXR9 (4:13)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 0*fem),
                      child: Text(
                        'Followers',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Inknut Antiqua',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w400,
                          height: 2.5775*ffem/fem,
                          color: Color(0xff424242),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupd5fmdj5 (7vt5FAoPgpFki117u1D5Fm)
              margin: EdgeInsets.fromLTRB(74*fem, 0*fem, 73*fem, 21*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                color: Color(0xff141414),
              ),
              child: Center(
                child: Center(
                  child: Text(
                    'Edit profile ',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Inknut Antiqua',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w400,
                      height: 2.5775*ffem/fem,
                      color: Color(0xffbababa),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              // hassansaiedisacreatorofthemini (4:16)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 33*fem, 33*fem),
              constraints: BoxConstraints (
                maxWidth: 276*fem,
              ),
              child: Text(
                'hassan saied is a creator of the minimalistic x bold graphics and digital artwork ',
                style: SafeGoogleFont (
                  'Habibi',
                  fontSize: 12*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.25*ffem/fem,
                  color: Color(0xff292929),
                ),
              ),
            ),
            Container(
              // artistcreativedirectorbydaynft (4:17)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 99*fem),
              constraints: BoxConstraints (
                maxWidth: 311*fem,
              ),
              child: Text(
                'Artist/ Creative Director by Day #NFT minting @ with FND right',
                style: SafeGoogleFont (
                  'Habibi',
                  fontSize: 12*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.25*ffem/fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroupk1fdczK (7vt5Lzy1YwKYEuAxX6K1fD)
              margin: EdgeInsets.fromLTRB(34*fem, 0*fem, 43*fem, 52*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // twitter1LQX (4:18)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    width: 30*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/page-1/images/twitter-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // citypng1ew1 (4:19)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.88*fem, 0*fem),
                    width: 30.12*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/page-1/images/citypng-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // instagram1N6K (4:20)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    width: 30*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/page-1/images/instagram-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // pngegg1t4f (4:21)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    width: 30*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/page-1/images/pngegg-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // playvideoyoutubeyoutublelogoic (4:22)
                    width: 30*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/page-1/images/playvideoyoutubeyoutuble-logoicon-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupq6asWLw (7vt5YVdriGDk7scyvBQ6As)
              margin: EdgeInsets.fromLTRB(46*fem, 0*fem, 55*fem, 0*fem),
              width: double.infinity,
              height: 36*fem,
              decoration: BoxDecoration (
                color: Color(0xffd9d9d9),
                borderRadius: BorderRadius.circular(5*fem),
              ),
              child: Center(
                child: Text(
                  'joined August,2023',
                  style: SafeGoogleFont (
                    'Inika',
                    fontSize: 16*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.3025*ffem/fem,
                    color: Color(0xff393939),
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