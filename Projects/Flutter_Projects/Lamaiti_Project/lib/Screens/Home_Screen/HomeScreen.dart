import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lamaiti/Components/CustomTextField/CustomTextField.dart';
import 'package:lamaiti/Components/Custom_Navigation_Bar/Custom_Navigation_Bar.dart';
import 'package:lamaiti/Consts/Home_Consts.dart';
import '../../src/locations.dart' as locations;
import 'package:line_icons/line_icons.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Map<String, Marker> _markers = {};
  int _currentIdx = 0;
  List<IconData> icons = [
    LineIcons.home,
    LineIcons.car,
    LineIcons.calendar,
    Icons.account_circle
  ];
  IconData currentIcon = LineIcons.home;

  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  void _BottomNavBarItemOnTap(int index) {
    setState(() {
      _currentIdx = index;
      currentIcon = icons[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BottomNavigationBarNotch(currentIcon: currentIcon),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomNavBar(
        icons: icons,
        currentIdx: _currentIdx,
        BottomNavBarItemOnTap: _BottomNavBarItemOnTap,
      ),
      body: Container(
        child: Stack(
          children: [
            GoogleMap(
              compassEnabled: true,
              buildingsEnabled: true,
              mapToolbarEnabled: true,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: true,
              mapType: MapType.terrain,
              padding: EdgeInsets.only(bottom: 150),
              onMapCreated: _onMapCreated,
              initialCameraPosition: HomeConsts.initialCameraPosition,
              markers: _markers.values.toSet(),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 80.0, right: 15.0, left: 20.0),
                child: Wrap(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: 65.0,
                          width: 380.0,
                          child: CustomTextField(
                            hintText:
                                "Search for a Country or City Name .........",
                            icon: Icons.location_searching_rounded,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 500.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 50.0,
                                  ),
                                  child: ElevatedButton.icon(
                                    icon: Image.asset(
                                      HomeConsts.assetImage2,
                                      width: 30.0,
                                      height: 30.0,
                                      fit: BoxFit.fill,
                                    ),
                                    onPressed: () {},
                                    style: HomeConsts.buttonSyle,
                                    label: const Text(
                                      HomeConsts.text6,
                                      style: HomeConsts.text3Style,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 50.0,
                                  ),
                                  child: ElevatedButton.icon(
                                    icon: Icon(Icons.add_rounded),
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              _buildPopupDialog(context));
                                    },
                                    style: HomeConsts.buttonSyle,
                                    label: const Text(
                                      HomeConsts.text5,
                                      style: HomeConsts.text3Style,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: 375,
        height: 400,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        "assets/Images/carbon_close-filledexit.png",
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: GestureDetector(
                child: Image.asset(
                  "assets/Images/plus 1addCar.png",
                  height: 140,
                  width: 140,
                  fit: BoxFit.fill,
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: Text(
                "الرجاء اضاقة مركبة واحدة علي الاقل \nلمواصلةعملية الحجز.",
                style: HomeConsts.popUpText1Style,
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "اضافة الان",
                style: HomeConsts.popUpText2Style,
              ),
              style: HomeConsts.buttonSyle,
            ),
          ],
        ),
      ),
    );
  }
}
