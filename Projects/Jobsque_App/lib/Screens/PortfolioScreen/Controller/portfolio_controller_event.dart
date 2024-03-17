part of 'portfolio_controller_bloc.dart';

abstract class PortfolioControllerEvent extends Equatable {
  const PortfolioControllerEvent();
}

class UploadingPortfolioDataEvent extends PortfolioControllerEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class FetchingPortfolioDataEvent extends PortfolioControllerEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
