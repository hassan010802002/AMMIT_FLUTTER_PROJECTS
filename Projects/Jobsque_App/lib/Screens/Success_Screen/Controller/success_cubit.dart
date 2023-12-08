import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'success_state.dart';

class SuccessCubit extends Cubit<SuccessState> {
  SuccessCubit() : super(SuccessInitial());
}
