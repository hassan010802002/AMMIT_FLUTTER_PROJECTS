part of 'applied_jobs_controller_bloc.dart';

abstract class AppliedJobsControllerState extends Equatable {
  const AppliedJobsControllerState();
}

class AppliedJobsControllerInitial extends AppliedJobsControllerState {
  @override
  List<Object> get props => [];
}

class LoadingAppliedJobsApiData extends AppliedJobsControllerState {
  @override
  List<Object> get props => [];
}
class SuccessAppliedJobsApiData extends AppliedJobsControllerState {
  final JobsModel? jobsModel;

  const SuccessAppliedJobsApiData(this.jobsModel);

  @override
  List<Object> get props => [];
}
class FailureAppliedJobsApiData extends AppliedJobsControllerState {
  @override
  List<Object> get props => [];
}

class AppliedJobsIdleSave extends AppliedJobsControllerState {
  @override
  List<Object> get props => [];
}
class AppliedJobsSaveJob extends AppliedJobsControllerState {
  @override
  List<Object> get props => [];
}
class AppliedJobsNotSaved extends AppliedJobsControllerState {
  @override
  List<Object> get props => [];
}

class AppliedJobsIdleStep extends AppliedJobsControllerState {
  @override
  List<Object> get props => [];
}
class AppliedJobsUpdatingActiveStep extends AppliedJobsControllerState {
  @override
  List<Object> get props => [];
}
