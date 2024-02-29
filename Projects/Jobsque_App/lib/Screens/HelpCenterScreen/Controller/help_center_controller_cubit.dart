import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'help_center_controller_state.dart';

class HelpCenterControllerCubit extends Cubit<HelpCenterControllerState> {
  HelpCenterControllerCubit() : super(HelpCenterControllerInitial());
}
