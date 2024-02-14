part of 'applied_jobs_controller_bloc.dart';

abstract class AppliedJobsControllerEvent extends Equatable {
  const AppliedJobsControllerEvent();
}

class AppliedJobsFetchingApiData extends AppliedJobsControllerEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
