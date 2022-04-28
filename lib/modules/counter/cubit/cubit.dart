import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mino1/modules/counter/cubit/States.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit(): super(CounterInitState());
  //ease to create object from the Cubit
  static CounterCubit get_context(context){
    return BlocProvider.of(context);
  }
  int count = 0;
  void Minus(){
    count--;
    //emit send the state
    emit(CounterMinus(count));
  }
  void Plus(){
    count++;
    emit(CounterPlus(count));
  }
}