// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class FetchingApiData extends SearchEvent{

  String? jobName = "";
  String? jobLocation = "";
  String? jobSalary = "";

  FetchingApiData({this.jobName , this.jobLocation , this.jobSalary});

  @override
  List<Object?> get props => [jobName , jobLocation , jobSalary];

}
