// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'messages_controller_state.dart';

class MessagesControllerCubit extends Cubit<MessagesControllerState> {
  bool isSearching = false;
  bool isEmptySearch = false;
  bool isMainMessagesView = false;
  bool isUnReadMessagesView = false;
  TextEditingController searchingController = TextEditingController();

  MessagesControllerCubit() : super(MessagesControllerInitial()){
    Future.delayed(
      const Duration(seconds: 3),
          () {
        isMainMessagesView = true;
        isUnReadMessagesView = false;
        emit(MainMessagesState());
      },
    );
  }


  void CheckingSearch() {
    if (searchingController.text.isNotEmpty) {
      isSearching = true;
      isEmptySearch = true;
      emit(MessagesSearching());
    } else {
      isEmptySearch = false;
      isSearching = false;
      emit(MessagesIdleSearch());
    }
  }

  void ChangeUnReadMessagesState(){
    isMainMessagesView = false;
    isUnReadMessagesView = true;
    emit(UnReadMessagesState());
  }

  void CancelSearch() {
    searchingController.clear();
    isSearching = false;
    isEmptySearch = false;
    emit(MessagesIdleSearch());
  }
}
