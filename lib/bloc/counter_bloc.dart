import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }

  void _increment(
      IncrementCounter incrementCounter, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decrement(
      DecrementCounter decrementCounter, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter == 0 ? 0 : state.counter - 1));
  }
}
