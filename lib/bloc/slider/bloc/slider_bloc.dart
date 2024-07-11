import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/slider/bloc/slider_event.dart';
import 'package:bloc_state_management/bloc/slider/bloc/slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderState()) {
    on<EnableOrDisableNotifications>(enableOrDisableNotifications);

    on<SliderBar>(_sliderBar);
  }
  void enableOrDisableNotifications(
      EnableOrDisableNotifications event, Emitter emit) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void _sliderBar(SliderBar event, Emitter emit) {
    emit(state.copyWith(slider: event.slider));
  }
}
