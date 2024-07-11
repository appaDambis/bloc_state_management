import 'package:equatable/equatable.dart';

class SliderState extends Equatable {
  bool isSwitch;
  double slider;
  SliderState({this.isSwitch = false, this.slider = 0.1});

  SliderState copyWith({bool? isSwitch, double? slider}) {
    return SliderState(
        isSwitch: isSwitch ?? this.isSwitch, slider: slider ?? this.slider);
  }

  @override
  List<Object> get props => [isSwitch, slider];
}
