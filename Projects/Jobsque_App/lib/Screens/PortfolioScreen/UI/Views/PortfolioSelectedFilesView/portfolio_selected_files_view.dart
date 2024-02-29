// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque_app/Screens/PortfolioScreen/UI/Widgets/PortfolioSelectedFileContainer/portfolio_selected_file_container.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/portfolio_controller_bloc.dart';

class PortfolioSelectedFilesView extends StatefulWidget {
  final PortfolioControllerBloc portfolioControllerBloc;

  const PortfolioSelectedFilesView({super.key, required this.portfolioControllerBloc});

  @override
  _PortfolioSelectedFilesViewState createState() => _PortfolioSelectedFilesViewState();
}

class _PortfolioSelectedFilesViewState extends State<PortfolioSelectedFilesView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PortfolioControllerBloc, PortfolioControllerState>(
      bloc: widget.portfolioControllerBloc,
      builder: (context, state) {
        return ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: PortfolioSelectedFileContainer(portfolioControllerBloc: widget.portfolioControllerBloc , currentFileIdx: index),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20.0.h,
            );
          },
          itemCount: widget.portfolioControllerBloc.filesCounter,
        );
      },
    );
  }
}
