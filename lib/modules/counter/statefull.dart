
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mino1/modules/counter/cubit/States.dart';
import 'package:mino1/modules/counter/cubit/cubit.dart';


class Mion extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener:(context , state){
          //listener is controls the states
          // is that's mean is the state is object from counter minus or not
          // if(state is CounterPlus) print('Counter is Plus :${state.count}');
          // if(state is CounterMinus) print('Counter is Minus :${state.count}');
      },
        builder: (context , state){
          return Scaffold(
            appBar: AppBar(
              title: Text("Counter"),
            ),
            body: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  TextButton(
                      onPressed: (){
                        CounterCubit.get_context(context).Minus();

                      },
                      child: Text("Min")),
                  Center(
                    child: Text("${CounterCubit.get_context(context).count}",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40
                    ),),
                  ),
                  TextButton(
                      onPressed: (){

                        CounterCubit.get_context(context).Plus();
                      },
                      child: Text("Max")),
                ],
              ),
            ),
          );
        },


      ),
    );
  }
}
