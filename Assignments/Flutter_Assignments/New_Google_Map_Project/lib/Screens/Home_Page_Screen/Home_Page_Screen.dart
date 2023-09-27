import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHome_Page extends StatelessWidget {
  const MyHome_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Home_Page_Screen(),
    );
  }
}

class Home_Page_Screen extends StatefulWidget {
  const Home_Page_Screen({super.key});

  @override
  State<Home_Page_Screen> createState() => _Home_Page_Screen_State();
}

class _Home_Page_Screen_State extends State<Home_Page_Screen> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  Position? myPosition;
  List<Marker> mapMarkers = [];

  get_MyCurrent_Location() async {
    LocationPermission permission;
    bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (isServiceEnabled) {
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      } else {
        Position position = await Geolocator.getCurrentPosition(forceAndroidLocationManager: true, desiredAccuracy: LocationAccuracy.best);
        setState(() {
          myPosition = position;
        });
        if (myPosition != null) {
          await goToLocation(LatLng(myPosition!.latitude, myPosition!.longitude));
          addMapMarker("1", LatLng(position.latitude, position.longitude));
        }
      }
    }
  }

  addMapMarker(String? markerId, LatLng? position) {
    mapMarkers.add(Marker(
      markerId: MarkerId(markerId!),
      position: position!,
    ));
  }

  goToLocation(LatLng newLocation) async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: myPosition.isNull ? const LatLng(18.488213, -69.959186) : newLocation, zoom: 15.0, bearing: 30.0),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    get_MyCurrent_Location();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 450,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.amberAccent,
              width: 2.0,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.blueGrey.withOpacity(0.8),
                blurRadius: 50.0,
                spreadRadius: 10.0,
              ),
            ],
          ),
          child: GoogleMap(
            initialCameraPosition: myPosition.isNull
                ? const CameraPosition(target: LatLng(18.488213, -69.959186))
                : CameraPosition(
                    target: LatLng(myPosition!.latitude, myPosition!.longitude),
                    zoom: 15.0,
                  ),
            onMapCreated: (controller) async {
              _controller.complete(controller);
              await goToLocation(LatLng(myPosition!.latitude, myPosition!.longitude));
            },
            markers: mapMarkers.toSet(),
            mapType: MapType.terrain,
            tiltGesturesEnabled: true,
            rotateGesturesEnabled: true,
            buildingsEnabled: true,
            fortyFiveDegreeImageryEnabled: true,
            myLocationButtonEnabled: true,
            compassEnabled: true,
            myLocationEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: true,
            mapToolbarEnabled: true,
            scrollGesturesEnabled: true,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
            child: GestureDetector(
              onTap: () async {
                await goToLocation(LatLng(myPosition!.latitude, myPosition!.longitude));
              },
              child: ClipOval(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.location_pin,
                      color: Colors.amberAccent,
                      size: 35,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  goToLocation(const LatLng(18.488213, -69.959186));
                  setState(() {
                    addMapMarker("first", const LatLng(18.488213, -69.959186));
                  });
                },
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(8.0),
                  backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(
                        color: Colors.blueGrey,
                        width: 3.0,
                      ),
                    ),
                  ),
                  fixedSize: const MaterialStatePropertyAll(Size(180, 60)),

                ),
                child: const Text(
                  "Start",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 3.0,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  goToLocation(const LatLng(23.837689, 90.370076));
                  setState(() {
                    addMapMarker("last", const LatLng(23.837689, 90.370076));
                  });
                },
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(8.0),
                  backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(
                        color: Colors.blueGrey,
                        width: 3.0,
                      ),
                    ),
                  ),
                  fixedSize: const MaterialStatePropertyAll(Size(150, 60)),
                ),
                child: const Text(
                  "Destination",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 3.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
