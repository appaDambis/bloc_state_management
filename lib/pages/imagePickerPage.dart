import 'dart:io';

import 'package:bloc_state_management/bloc/imagePicker/bloc/image_picker_bloc.dart';
import 'package:bloc_state_management/bloc/imagePicker/bloc/image_picker_event.dart';
import 'package:bloc_state_management/bloc/imagePicker/bloc/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Imagepickerpage extends StatelessWidget {
  const Imagepickerpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ImagePickerBloc, ImagePickerState>(
            builder: (context, state) {
          return state.file == null
              ? InkWell(
                  onTap: () {
                    context.read<ImagePickerBloc>().add(ImagePickerGallery());
                  },
                  child: CircleAvatar(
                    child: Icon(Icons.photo),
                  ),
                )
              : Image.file(File(state.file!.path.toString()));
        }),
      ),
    );
  }
}
