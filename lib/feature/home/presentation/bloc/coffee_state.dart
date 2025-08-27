part of 'coffee_bloc.dart';

sealed class CoffeeState extends Equatable {
  const CoffeeState();
  
  @override
  List<Object?> get props => [];
}

final class CoffeeInitial extends CoffeeState {
  final List<CoffeeService>?coffe;

  const CoffeeInitial({this.coffe});

  @override
  List<Object?> get props=>[coffe];
}

final class CoffeeLoading extends CoffeeState{}

final class CoffeeFailure extends CoffeeState{}

final class CoffeeLoaded extends CoffeeState {
  
}