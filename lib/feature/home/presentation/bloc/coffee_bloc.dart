import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mi_app/feature/home/data/coffee_service.dart';
import 'package:mi_app/feature/home/data/models/coffee_model.dart';

part 'coffee_event.dart';
part 'coffee_state.dart';

class CoffeeBloc extends Bloc<CoffeeEvent, CoffeeState> {
  final CoffeeService coffeeService; //para obtener los cafés desde el JSON.


  CoffeeBloc({required this.coffeeService}) : super(CoffeeInitial()) {
    on<CoffeeEvent>((event, emit) async {
      emit(CoffeeLoading());
        try {
          final cafes = await coffeeService.fetchCoffees();
          emit(CoffeeLoaded(cafes));
        } catch (e) { //si sale un error mostrar:
            emit(CoffeeFailure());
          }
    });
    //eventos para cuando se actualice
    on<updateCoffees>((event, emit) async {
      emit(CoffeeLoading());
      try {
        final cafes = await coffeeService.updateCoffees();
        emit(CoffeeLoaded(cafes));
      } catch (e) {
        emit(CoffeeFailure());
      }
    });
  }
}
