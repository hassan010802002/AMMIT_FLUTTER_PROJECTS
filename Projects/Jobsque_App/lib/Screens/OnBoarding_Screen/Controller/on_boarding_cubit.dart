// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  int viewIndex = 0;

  void ChangeOnBoardingView() {
    emit(ViewInitialState());
    if (viewIndex == 2) {
      viewIndex = 0;
    }else {
      viewIndex ++;
    }
    emit(ViewChangeState());
  }
}
