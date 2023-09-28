import 'package:flutter/foundation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class PickImage {
  static pickImage() async {
    final imagePicker = ImagePicker();
    try {
      XFile? pickedImage = await imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      return pickedImage;
    } catch (e) {
      throw Exception(e);
    }
  }
}

class ProfileImage {
  CroppedFile? croppedFile;
  Future<CroppedFile?> selectImage(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      croppedFile = await cropImage(pickedFile);
    }
    return croppedFile;
  }

  Future<CroppedFile?> cropImage(XFile file) async {
    CroppedFile? croppedImage = await ImageCropper().cropImage(
        sourcePath: file.path,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        compressQuality: 20);
    return croppedImage;
  }
}
