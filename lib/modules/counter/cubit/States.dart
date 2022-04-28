abstract class CounterStates {
}

class CounterInitState extends CounterStates{
}
class CounterMinus extends CounterStates{
  //to send value when this state is happened
  final int count;

  CounterMinus(this.count);

}
class CounterPlus extends CounterStates{
  final int count;

  CounterPlus(this.count);
}