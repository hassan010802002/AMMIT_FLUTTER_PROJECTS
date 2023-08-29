import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lamaiti/Components/CustomTextField/CustomTextField.dart';
import 'package:lamaiti/Components/Custom_Button/Custom_Button.dart';
import 'package:lamaiti/Components/Custom_Navigation_Bar/Custom_Navigation_Bar.dart';
import 'package:lamaiti/Consts/Home_Consts.dart';
import 'package:lamaiti/Controllers/Home_Controller/Home_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';
import '../../src/locations.dart' as locations;

class MyHome extends StatelessWidget {
  Home_Controller homeController = Get.put(Home_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetX(
        init: homeController,
        builder: (DisposableInterface controller) {
          return Custom_Bottom_Navigation_Bar(
            currentIdx: homeController.currentIdx.value,
            BottomNavBarItemOnTap: homeController.BottomNavBarItemOnTap,
          );
        },
      ),
      body: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Home_Controller homeController = Get.put(Home_Controller());
  final Map<String, Marker> _markers = {};

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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          GoogleMap(
            compassEnabled: true,
            buildingsEnabled: true,
            mapToolbarEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: true,
            mapType: MapType.terrain,
            padding: EdgeInsets.only(bottom: 100),
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
                          padding: const EdgeInsets.only(top: 535.0),
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
                                  onPressed: () {
                                    homeController.Navigate(MyRoutes.newCarScreen);
                                  },
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
                onTap: () {
                  homeController.Navigate_in_PopUp(MyRoutes.newCarScreen);
                },
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
            CustomButton(
              controller: homeController,
              buttonText: "اضافة الان",
              onPressed: () {
                homeController.Navigate_in_PopUp(MyRoutes.newCarScreen);

              },
              fixedSize: MaterialStatePropertyAll(Size(180, 65)),
            ),
          ],
        ),
      ),
    );
  }
}
