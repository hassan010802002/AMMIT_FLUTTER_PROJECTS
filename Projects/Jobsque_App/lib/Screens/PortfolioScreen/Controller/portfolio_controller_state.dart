part of 'portfolio_controller_bloc.dart';

abstract class PortfolioControllerState extends Equatable {
  const PortfolioControllerState();
}

class PortfolioControllerInitial extends PortfolioControllerState {
  @override
  List<Object> get props => [];
}

class PortfolioSuccessApiUploadCvFile extends PortfolioControllerState {
  @override
  List<Object> get props => [];
}
class PortfolioIdleApiUploadCvFile extends PortfolioControllerState {
  @override
  List<Object> get props => [];
}
class PortfolioFailureApiUploadCvFile extends PortfolioControllerState {
  @override
  List<Object> get props => [];
}
