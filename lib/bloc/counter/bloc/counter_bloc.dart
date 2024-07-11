import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/counter/bloc/counter_event.dart';
import 'package:bloc_state_management/bloc/counter/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(increment);

    on<DecrementCounter>(decrement);
  }

  void increment(IncrementCounter event, Emitter emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void decrement(DecrementCounter event, Emitter emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
