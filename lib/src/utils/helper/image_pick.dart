// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

// for picking up image from gallery
pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  }
  if (kDebugMode) {
    print('No Image Selected');
  }
}
