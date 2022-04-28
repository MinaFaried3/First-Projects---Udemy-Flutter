import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mino1/modules/bmi/bmi.dart';
import 'package:mino1/shared/bloC_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      // Use cubits...
      //     CounterCubit();
      runApp(Mino());
    },
    blocObserver: MyBlocObserver(),
  );
}

class Mino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BMI());
  }
}
