part of 'main_profile_controller_bloc.dart';

abstract class MainProfileControllerState extends Equatable {
  const MainProfileControllerState();
}

class MainProfileControllerInitial extends MainProfileControllerState {
  @override
  List<Object> get props => [];
}

class MainProfileSuccessProfileApiData extends MainProfileControllerState {
  final ProfileModel? profileModel;

  const MainProfileSuccessProfileApiData(this.profileModel);

  @override
  List<Object> get props => [];
}
class MainProfileLoadingProfileApiData extends MainProfileControllerState {
  @override
  List<Object> get props => [];
}
class MainProfileFailureProfileApiData extends MainProfileControllerState {
  @override
  List<Object> get props => [];
}
