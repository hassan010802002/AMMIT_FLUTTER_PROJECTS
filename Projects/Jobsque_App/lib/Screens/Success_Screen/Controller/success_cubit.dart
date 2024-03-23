import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'success_state.dart';

class SuccessCubit extends Cubit<SuccessState> {
  SuccessCubit() : super(SuccessInitial());
}
