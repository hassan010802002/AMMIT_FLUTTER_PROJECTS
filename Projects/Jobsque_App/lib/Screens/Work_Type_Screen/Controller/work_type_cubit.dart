// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'work_type_state.dart';

class WorkTypeCubit extends Cubit<WorkTypeState> {
  int? selectedIndex;
  List<int> selectedWorkTypes = <int>[];
  bool isSelected = false;

  WorkTypeCubit() : super(WorkTypeInitial());

  void CheckingUserWorkTypeSelection(int currentIndex) {
    selectedIndex = currentIndex;
    isSelected = selectedWorkTypes.contains(selectedIndex)? true : false;
    if (!isSelected) {
      selectedWorkTypes.add(selectedIndex!);
      emit(SelectedWorkType());
    }else{
      selectedWorkTypes.remove(selectedIndex!);
      emit(UnSelectedWorkType());
    }
  }
}
