import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'job_application_state.dart';

class JobApplicationCubit extends Cubit<JobApplicationState> {
  bool isJobDetailsView = false;
  bool isJobApplyView = false;
  bool isJobApplyCompleteView = false;

  JobApplicationCubit() : super(JobApplicationInitial()){
    if (state == JobApplicationInitial()) {
      isJobDetailsView = true;
      emit(JobApplicationDetailsViewState());
    }
  }


}
