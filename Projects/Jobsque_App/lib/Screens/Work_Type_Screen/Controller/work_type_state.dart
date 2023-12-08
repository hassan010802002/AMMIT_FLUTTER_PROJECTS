part of 'work_type_cubit.dart';

@immutable
abstract class WorkTypeState {}

class WorkTypeInitial extends WorkTypeState {}

class SelectedWorkType extends WorkTypeState {}
class UnSelectedWorkType extends WorkTypeState {}
