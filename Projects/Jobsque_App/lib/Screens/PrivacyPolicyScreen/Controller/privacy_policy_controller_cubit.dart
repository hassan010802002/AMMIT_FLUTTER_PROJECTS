import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'privacy_policy_controller_state.dart';

class PrivacyPolicyControllerCubit extends Cubit<PrivacyPolicyControllerState> {
  PrivacyPolicyControllerCubit() : super(PrivacyPolicyControllerInitial());
}
