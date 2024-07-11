import 'package:image_picker/image_picker.dart';

class Imagepickerutils {
  final ImagePicker _picker = ImagePicker();

  Future<XFile?> imagePickerGallery() async {
    final XFile? file = await _picker.pickImage(source: ImageSource.camera);
  }
}
