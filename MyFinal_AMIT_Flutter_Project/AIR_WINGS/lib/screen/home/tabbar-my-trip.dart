import 'package:air_wings/common/app_localizations.dart';
import 'package:air_wings/common/constants/colors.dart';
import 'package:air_wings/screen/empty/my-trip-empty.dart';
import 'package:flutter/material.dart';
import '../../sizes_helpers.dart';
import 'my-trip.dart';

class TabbarMy_Trip extends StatefulWidget {
  const TabbarMy_Trip({super.key});

  @override
  _TabbarMy_TripState createState() => _TabbarMy_TripState();
}

class _TabbarMy_TripState extends State<TabbarMy_Trip> {
  List<Widget> containers = [
    My_Trip(),
    My_Trip_Empty(),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(100.0),
            child: Container(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              width: displaySize(context).width,
              decoration: BoxDecoration(
                color: kWhite,
                border: Border.all(
                  width: 0,
                  color: kWhite,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: kWhite,
                elevation: 0,
                title: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    AppLocalizations.of(context)!.translate('MyTrip')!,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontSize: 34,
                      color: kBlack,
                    ),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(30.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: TabBar(
                      isScrollable: true,
                      labelPadding: const EdgeInsets.only(left: 10, right: 10),
                      indicatorColor: kBlue,
                      labelColor: kBlue,
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: <Widget>[
                        Tab(
                          child: Text(
                            AppLocalizations.of(context)!.translate('Upcoming')!,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            AppLocalizations.of(context)!.translate('History')!,
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: containers,
          ),
        ),
      ),
    );
  }
}
