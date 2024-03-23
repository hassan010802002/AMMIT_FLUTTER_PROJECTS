// ignore_for_file: camel_case_types, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/PortfolioScreen/UI/Views/PortfolioSelectedFilesView/portfolio_selected_files_view.dart';
import 'package:jobsque_app/Screens/PortfolioScreen/UI/Widgets/AddPortfolioTextWidget/add_portfolio_text_widget.dart';
import 'package:jobsque_app/Screens/PortfolioScreen/UI/Widgets/PortfolioScreenTitle/portfolio_screen_title.dart';
import 'package:jobsque_app/Screens/PortfolioScreen/UI/Widgets/UploadPortfolioFileContainer/upload_portfolio_file_container.dart';

import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Controller/portfolio_controller_bloc.dart';

class PortfolioMainView extends StatefulWidget {
  final PortfolioControllerBloc portfolioControllerBloc;

  const PortfolioMainView({super.key, required this.portfolioControllerBloc});

  @override
  State<PortfolioMainView> createState() => _PortfolioMainViewState();
}

class _PortfolioMainViewState extends State<PortfolioMainView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackButtonWidget(),
              const PortfolioScreenTitle(),
              const SizedBox(),
            ],
          ),
          SizedBox(
            height: 30.0.h,
          ),
          const AddPortfolioTextWidget(),
          SizedBox(
            height: 20.0.h,
          ),
          UploadPortfolioFileContainer(portfolioControllerBloc: widget.portfolioControllerBloc),
          SizedBox(
            height: 30.0.h,
          ),
          Expanded(
            child: PortfolioSelectedFilesView(portfolioControllerBloc: widget.portfolioControllerBloc),
          ),
        ],
      ),
    );
  }
}
