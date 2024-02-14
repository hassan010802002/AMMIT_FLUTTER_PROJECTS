part of 'job_saved_controller_bloc.dart';

abstract class JobSavedControllerState extends Equatable {
  const JobSavedControllerState();
}

class JobSavedControllerInitial extends JobSavedControllerState {
  @override
  List<Object> get props => [];
}

class JobSavedLoadingJobsAPIData extends JobSavedControllerState {
  @override
  List<Object> get props => [];
}
class JobSavedSuccessfulJobsAPIData extends JobSavedControllerState {
  final JobsModel? jobsModel;

  const JobSavedSuccessfulJobsAPIData(this.jobsModel);

  @override
  List<Object> get props => [];
}
class JobSavedFailureJobsAPIData extends JobSavedControllerState {
  @override
  List<Object> get props => [];
}
