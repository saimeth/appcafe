part of 'coffee_bloc.dart';

sealed class CoffeeState extends Equatable {
  const CoffeeState();
  
  @override
  List<Object> get props => [];
}

final class CoffeeInitial extends CoffeeState {}

final class CoffeeLoading extends CoffeeState{}

final class CoffeeFailure extends CoffeeState{}

final class CoffeeLoaded extends CoffeeState {
  final List<Coffee> cafes;

  const CoffeeLoaded(this.cafes);

  @override
  List<Object> get props => [cafes];
}