import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'profile_security_email_address_controller_state.dart';

class ProfileSecurityEmailAddressControllerCubit extends Cubit<ProfileSecurityEmailAddressControllerState> {
  ProfileSecurityEmailAddressControllerCubit() : super(ProfileSecurityEmailAddressControllerInitial());
}
