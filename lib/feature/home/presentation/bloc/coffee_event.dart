part of 'coffee_bloc.dart';

sealed class CoffeeEvent extends Equatable {
  const CoffeeEvent();

  @override
  List<Object> get props => [];
}
class views_loading extends CoffeeEvent{}

class updateCoffees extends CoffeeEvent{} // evento para actualiar los cafés
