part of 'portfolio_controller_bloc.dart';

abstract class PortfolioControllerState extends Equatable {
  const PortfolioControllerState();
}

class PortfolioControllerInitial extends PortfolioControllerState {
  @override
  List<Object> get props => [];
}

class PortfolioSuccessUploadFile extends PortfolioControllerState {
  @override
  List<Object> get props => [];
}
class PortfolioIdleUploadFile extends PortfolioControllerState {
  @override
  List<Object> get props => [];
}
