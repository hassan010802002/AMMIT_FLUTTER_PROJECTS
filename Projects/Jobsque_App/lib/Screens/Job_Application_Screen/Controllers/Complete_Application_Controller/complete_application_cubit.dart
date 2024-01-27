import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'complete_application_state.dart';

class CompleteApplicationCubit extends Cubit<CompleteApplicationState> {
  CompleteApplicationCubit() : super(CompleteApplicationInitial());
}
