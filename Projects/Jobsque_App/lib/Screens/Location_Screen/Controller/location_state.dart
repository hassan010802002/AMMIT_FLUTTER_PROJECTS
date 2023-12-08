part of 'location_cubit.dart';

@immutable
abstract class LocationState {}

class LocationInitial extends LocationState {}

class SelectedWorkType extends LocationState {}

class SelectedCountry extends LocationState {}
class IdleCountry extends LocationState {}
