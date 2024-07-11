import 'package:bloc_state_management/bloc/counter/bloc/counter_bloc.dart';
import 'package:bloc_state_management/bloc/imagePicker/bloc/image_picker_bloc.dart';
import 'package:bloc_state_management/bloc/slider/bloc/slider_bloc.dart';
import 'package:bloc_state_management/pages/imagePickerPage.dart';
import 'package:bloc_state_management/utilis/imagePickerUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SliderBloc(),
        ),
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => ImagePickerBloc(Imagepickerutils()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Imagepickerpage(),
      ),
    );
  }
}
