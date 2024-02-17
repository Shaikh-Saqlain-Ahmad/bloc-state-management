import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/counter/counter-events.dart';
import 'package:bloc_state_management/bloc/counter/counter-state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(increment);
    on<DecrementCounter>(decrement);
  }
  void increment(IncrementCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void decrement(DecrementCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
