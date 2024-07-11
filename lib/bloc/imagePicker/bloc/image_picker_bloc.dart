import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/bloc/imagePicker/bloc/image_picker_event.dart';
import 'package:bloc_state_management/bloc/imagePicker/bloc/image_picker_state.dart';
import 'package:bloc_state_management/utilis/imagePickerUtils.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final Imagepickerutils imagepickerutils;
  ImagePickerBloc(this.imagepickerutils) : super(const ImagePickerState()) {
    on<ImagePickerGallery>(_imagePickerGallery);
  }

  void _imagePickerGallery(ImagePickerGallery event, Emitter emit) async {
    XFile? file = await imagepickerutils.imagePickerGallery();
    emit(state.copyWith(file: file));
  }
}
