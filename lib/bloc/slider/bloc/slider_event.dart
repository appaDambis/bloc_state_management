import 'package:equatable/equatable.dart';

abstract class SliderEvent extends Equatable {
  const SliderEvent();

  @override
  List<Object> get props => [];
}

class EnableOrDisableNotifications extends SliderEvent {}

class SliderBar extends SliderEvent {
  double slider;
  SliderBar({required this.slider});

  @override
  List<Object> get props => [slider];
}
