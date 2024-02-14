part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class LoadingApiData extends HomeState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class SuccessProfileApiData extends HomeState{
  final ProfileModel? profileModel;


  const SuccessProfileApiData(this.profileModel);

  @override
  // TODO: implement props
  List<Object?> get props => [profileModel!];
}
class SuccessJobsApiData extends HomeState{
  final JobsModel? jobsModel;

  const SuccessJobsApiData(this.jobsModel);

  @override
  // TODO: implement props
  List<Object?> get props => [jobsModel!];
}
class FailureApiData extends HomeState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SavedJob extends HomeState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class UnSavedJob extends HomeState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class SelectedJob extends HomeState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class UnSelectedJob extends HomeState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
