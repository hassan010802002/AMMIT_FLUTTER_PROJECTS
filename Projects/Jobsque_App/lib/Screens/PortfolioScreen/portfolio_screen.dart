// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/PortfolioScreen/Controller/portfolio_controller_bloc.dart';
import 'UI/Views/PortfolioMainView.dart';

class PortfolioScreen extends StatefulWidget {
  final PortfolioControllerBloc portfolioControllerBloc = PortfolioControllerBloc();

  PortfolioScreen({ super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => widget.portfolioControllerBloc,
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: PortfolioMainView(portfolioControllerBloc: widget.portfolioControllerBloc),
        ),
      ),
    );
  }
}


