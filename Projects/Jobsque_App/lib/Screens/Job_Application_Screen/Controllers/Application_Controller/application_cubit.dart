import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'application_state.dart';

class ApplicationCubit extends Cubit<ApplicationState> {
  ApplicationCubit() : super(ApplicationInitial());
}
