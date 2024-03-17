part of 'edit_profile_controller_bloc.dart';

abstract class EditProfileControllerState extends Equatable {
  const EditProfileControllerState();
}

class EditProfileControllerInitial extends EditProfileControllerState {
  @override
  List<Object> get props => [];
}

class EditProfileSuccessApiDataUpdate extends EditProfileControllerState {
  @override
  List<Object> get props => [];
}
class EditProfileSuccessApiUserDataUpdate extends EditProfileControllerState {
  @override
  List<Object> get props => [];
}
class EditProfileFailureApiUpdateData extends EditProfileControllerState {
  @override
  List<Object> get props => [];
}
class EditProfileLoadingApiData extends EditProfileControllerState {
  @override
  List<Object> get props => [];
}

class EditProfileIdleProfileImage extends EditProfileControllerState {
  @override
  List<Object> get props => [];
}
class EditProfileUserProfileImage extends EditProfileControllerState {
  @override
  List<Object> get props => [];
}
class EditProfileSuccessApiPortfolioDataUpdate extends EditProfileControllerState {
  @override
  List<Object> get props => [];
}
