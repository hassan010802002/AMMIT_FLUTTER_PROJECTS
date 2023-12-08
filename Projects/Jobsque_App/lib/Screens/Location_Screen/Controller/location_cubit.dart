import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  int currentSelectedIndex =0;
  List<int> selectedCountries = <int>[];

  LocationCubit() : super(LocationInitial());

  void changeSelectedWorkType(int index){
    currentSelectedIndex = index;
    emit(SelectedWorkType());
  }

  void changeSelectedCountry(int index){
    if (!selectedCountries.contains(index)) {
      selectedCountries.add(index);
      emit(SelectedCountry());
    }else{
      selectedCountries.remove(index);
      emit(IdleCountry());
    }
  }
}
