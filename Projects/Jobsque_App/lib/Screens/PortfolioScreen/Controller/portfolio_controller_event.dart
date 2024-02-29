part of 'portfolio_controller_bloc.dart';

abstract class PortfolioControllerEvent extends Equatable {
  const PortfolioControllerEvent();
}

class PortfolioUploadFileEvent extends PortfolioControllerEvent {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
