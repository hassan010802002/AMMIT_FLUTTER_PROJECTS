part of 'filter_bottom_sheet_cubit.dart';

@immutable
abstract class FilterBottomSheetState {}

class FilterBottomSheetInitial extends FilterBottomSheetState {}

class SelectedJobTypeFilter extends FilterBottomSheetState {}
class UnSelectedJobTypeFilter extends FilterBottomSheetState {}
