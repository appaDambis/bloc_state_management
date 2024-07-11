import 'package:bloc_state_management/bloc/slider/bloc/slider_bloc.dart';
import 'package:bloc_state_management/bloc/slider/bloc/slider_event.dart';
import 'package:bloc_state_management/bloc/slider/bloc/slider_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider Page"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const Text("Notifications"),
              BlocBuilder<SliderBloc, SliderState>(
                buildWhen: (previous, current) =>
                    previous.isSwitch != current.isSwitch,
                builder: (context, state) {
                  return Switch(
                      value: state.isSwitch,
                      onChanged: (NewValue) {
                        context
                            .read<SliderBloc>()
                            .add(EnableOrDisableNotifications());
                      });
                },
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<SliderBloc, SliderState>(
            builder: (context, state) {
              return Container(
                height: 200,
                color: Colors.red.withOpacity(state.slider),
              );
            },
          ),
          BlocBuilder<SliderBloc, SliderState>(
            buildWhen: (previous, current) => previous.slider != current.slider,
            builder: (context, state) {
              return Slider(
                  value: state.slider,
                  onChanged: (value) {
                    context.read<SliderBloc>().add(SliderBar(slider: value));
                  });
            },
          )
        ],
      ),
    );
  }
}
