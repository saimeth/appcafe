import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mi_app/feature/home/data/coffee_service.dart';
import 'package:mi_app/feature/home/data/models/coffee_model.dart';

part 'coffee_event.dart';
part 'coffee_state.dart';

class CoffeeBloc extends Bloc<CoffeeEvent, CoffeeState> {
  final List<CoffeeService>? coffeeService;

  CoffeeBloc(this.coffeeService):super(CoffeeLoading()){
    on<CoffeeLoad>(_onCoffeeLoad);

  }
  Future<void>_onCoffeeLoad(CoffeeLoad event,Emitter<CoffeeState>emit,)async{
    emit(CoffeeLoading());
    try{
      final List<CoffeeService> coffeeService=await fetchCoffes();
      emit(CoffeeInitial(coffe:coffeeService));
    }catch(e){
      emit(CoffeeFailure());

    }

  }

  
}
