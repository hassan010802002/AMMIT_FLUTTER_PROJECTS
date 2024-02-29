part of 'edit_profile_controller_bloc.dart';

abstract class EditProfileControllerEvent extends Equatable {
  const EditProfileControllerEvent();
}

class UpdateUserProfileApiData extends EditProfileControllerEvent{
  @override
  List<Object?> get props => throw UnimplementedError();
}
