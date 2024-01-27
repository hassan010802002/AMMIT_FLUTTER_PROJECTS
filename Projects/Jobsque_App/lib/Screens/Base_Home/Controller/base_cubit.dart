// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'base_state.dart';

class BaseCubit extends Cubit<BaseState> {
  int? baseIndex ;

  BaseCubit([this.baseIndex = 0]) : super(HomeBase()) {
    ChangeBase(baseIndex!);
  }

  void ChangeBase(int index) {
    baseIndex = index;
    if (index == 0) {
      emit(HomeBase());
    } else if (index == 1) {
      emit(MessagesBase());
    } else if (index == 2) {
      emit(ApplicationBase());
    } else if (index == 3) {
      emit(SavedBase());
    } else {
      emit(ProfileBase());
    }
  }
}
