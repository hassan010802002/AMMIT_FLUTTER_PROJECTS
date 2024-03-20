import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_app/Screens/SearchScreen/Controller/FilterBottomSheetCubit/filter_bottom_sheet_cubit.dart';
import 'package:jobsque_app/Screens/SearchScreen/UI/Views/Search_MainView.dart';

import 'Controller/search_bloc.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  SearchBloc? blocController;
  FilterBottomSheetCubit? bottomSheetCubit;

  @override
  void initState() {
    blocController = SearchBloc();
    bottomSheetCubit = FilterBottomSheetCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => blocController!),
        BlocProvider(create: (context) => bottomSheetCubit!),
      ],
      child: SafeArea(
        child: Scaffold(
          primary: true,
          body: SearchMainView(controller: blocController!, bottomSheetCubit: bottomSheetCubit!),
        ),
      ),
    );
  }
}
