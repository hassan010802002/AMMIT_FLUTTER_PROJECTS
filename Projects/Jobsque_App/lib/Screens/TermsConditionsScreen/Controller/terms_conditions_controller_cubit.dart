import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'terms_conditions_controller_state.dart';

class TermsConditionsControllerCubit extends Cubit<TermsConditionsControllerState> {
  TermsConditionsControllerCubit() : super(TermsConditionsControllerInitial());
}
