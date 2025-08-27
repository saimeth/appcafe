part of 'coffee_bloc.dart';

sealed class CoffeeState extends Equatable {
  const CoffeeState();
  
  @override
  List<Object?> get props => [];
}

final class CoffeeInitial extends CoffeeState {
  final List<CoffeeService>?coffeeService;

  const CoffeeInitial({this.coffeeService});

  @override
  List<Object?> get props=>[coffeeService];
}

final class CoffeeLoading extends CoffeeState{}

final class CoffeeFailure extends CoffeeState{}

final class CoffeeLoaded extends CoffeeState {
  
}