import 'package:api_task_1/Consts/Home_Screen_Consts/Home_Screen_Consts.dart';
import 'package:api_task_1/Controllers/Home_Screen_Controller/Home_Screen_Controller.dart';
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
  Home_Screen_Controller controller = Get.put(Home_Screen_Controller());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      animationDuration: Home_Screen_Consts.tabbarDuration,
      length: 2,
      child: GetX(
        init: controller,
        builder: (controller) {
          return Scaffold(
            appBar: AppBar(
              primary: true,
              elevation: 5.0,
              toolbarHeight: 50,
              backgroundColor: Home_Screen_Consts.tabbarBackgroundColor,
              bottom: TabBar(
                onTap: (value) {
                  controller.ChangingTabView(value);
                },
                tabs: const [
                  Tab(
                    child: Text(
                      Home_Screen_Consts.tab1Text,
                    ),
                  ),
                  Tab(
                    child: Text(
                      Home_Screen_Consts.tab2Text,
                    ),
                  ),
                ],
                indicatorWeight: 5,
                indicatorPadding: Home_Screen_Consts.indicatorPadding,
                labelColor: Home_Screen_Consts.mainColor,
                unselectedLabelColor: Home_Screen_Consts.secondaryColor,
                labelStyle: Home_Screen_Consts.tabbarLabelStyle,
                unselectedLabelStyle: Home_Screen_Consts.tabbarLabelStyle,
                indicatorColor: Home_Screen_Consts.mainColor,
              ),
            ),
            body: Container(
              decoration: Home_Screen_Consts.containerDecoration,
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TabBarView(
                          children: [
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(12.0),
                                height: 450,
                                width: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.tealAccent,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: controller.myCarts.value.isEmpty
                                      ? const CircularProgressIndicator(
                                    color: Colors.amberAccent,
                                    strokeWidth: 5.0,
                                    backgroundColor: Colors.blueGrey,
                                  )
                                      : Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Title : ${controller.myCarts.value[0].products![controller.currentIdx.value].title}",
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  color: Color(0xff0B3FA8),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            Text(
                                              "Price : ${controller.myCarts.value[0].products![controller.currentIdx.value].price} \$",
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  color: Color(0xff0B3FA8),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            Text(
                                              "Quantity : ${controller.myCarts.value[0].products![controller.currentIdx.value].quantity} units",
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  color: Color(0xff0B3FA8),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ],
                                        ),
                                ),
                              ),
                            ),
                            controller.myCarts.value.isEmpty
                                ? Center(
                                    child: Container(
                                      padding: const EdgeInsets.all(12.0),
                                      height: 300,
                                      width: 250,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        color: Colors.tealAccent,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "!!!!!!! No Cart Items Found !!!!!!!",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xff0B3FA8),
                                              fontSize: 24,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                    ),
                                  )
                                : const Center(
                                    child: CircularProgressIndicator(
                                      color: Colors.amberAccent,
                                      strokeWidth: 5.0,
                                      backgroundColor: Colors.blueGrey,
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
