// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/Base_Home/Constants/BaseHomeConsts.dart';
import 'package:jobsque_app/Screens/Base_Home/Controller/base_cubit.dart';
import 'package:jobsque_app/Screens/Base_Home/UI/Widgets/AppliedNavBar_Item/applied_nav_bar_item.dart';
import 'package:jobsque_app/Screens/Base_Home/UI/Widgets/HomeNavBar_Item/home_nav_bar_item.dart';
import 'package:jobsque_app/Screens/Base_Home/UI/Widgets/MessagesNavBar_Item/messages_nav_bar_item.dart';
import 'package:jobsque_app/Screens/Base_Home/UI/Widgets/ProfileNavBar_Item/profile_nav_bar_item.dart';
import 'package:jobsque_app/Screens/Base_Home/UI/Widgets/SavedNavBar_Item/saved_nav_bar_item.dart';

class BottomNavBarView extends StatefulWidget {
  final BaseCubit cubit;

  const BottomNavBarView({super.key, required this.cubit});

  @override
  _BottomNavBarViewState createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseCubit, BaseState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: HomeNavBarItem(cubit: widget.cubit),
              label: BaseHomeConsts.text1,
            ),
            BottomNavigationBarItem(
              icon: MessagesNavBarItem(cubit: widget.cubit),
              label: BaseHomeConsts.text2,
            ),
            BottomNavigationBarItem(
              icon: AppliedNavBarItem(cubit: widget.cubit),
              label: BaseHomeConsts.text3,
            ),
            BottomNavigationBarItem(
              icon: SavedNavBarItem(cubit: widget.cubit),
              label: BaseHomeConsts.text4,
            ),
            BottomNavigationBarItem(
              icon: ProfileNavBarItem(cubit: widget.cubit),
              label: BaseHomeConsts.text5,
            ),
          ],
          backgroundColor: BaseHomeConsts.color9,
          currentIndex: widget.cubit.baseIndex!,
          selectedItemColor: BaseHomeConsts.color6,
          selectedFontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
          onTap: (value) {
            widget.cubit.ChangeBase(context , value);
          },
          selectedLabelStyle: BaseHomeConsts.textStyle1(context),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedFontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
          unselectedLabelStyle: BaseHomeConsts.textStyle1(context),
          unselectedItemColor: BaseHomeConsts.color8,
          type: BottomNavigationBarType.shifting,
        );
      },
    );
  }
}
