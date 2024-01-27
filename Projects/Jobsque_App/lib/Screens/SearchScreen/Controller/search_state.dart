part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();
}

class SearchInitial extends SearchState {
  @override
  List<Object> get props => [];
}
class LoadingApiData extends SearchState {
  @override
  List<Object> get props => [];
}
class SuccessApiData extends SearchState{
  final JobsModel? jobsModel;

  const SuccessApiData(this.jobsModel);

  @override
  List<Object?> get props => [jobsModel!];
}
class FailureApiData extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class Searching extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class IdleSearch extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class FilterSearching extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class UnFilterSearching extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SuccessFiltration extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class JobsFilter extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class IdleJobsFilter extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class JobsFilterNone extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class SavedJob extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class NotSavedJob extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class IdleJobSave extends SearchState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}