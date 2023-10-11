import 'package:firebase_app/Controllers/Home_Controller/Home_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home_Screen();
  }
}

class Home_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Home_Screen_State();
}

class _Home_Screen_State extends State<Home_Screen> {
  Home_Controller home_controller = Get.put(Home_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: home_controller.firebaseData.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GetX(
            init: home_controller,
            builder: ( controller) {
              if(controller.firebaseData.value.isEmpty){
                return const CircularProgressIndicator(
                  color: Colors.amber,
                  backgroundColor: Colors.blueGrey,
                );
              }else{
                return Card(
                  child: Column(
                    children: [
                      Text("${controller.firebaseData.value[0].name}"),
                      Text("${controller.firebaseData.value[0].email}"),
                    ],
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
