import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

ImageProvider imageChooserFunction(CroppedFile? croppedValue) {
  if (croppedValue == null) {
    return const AssetImage("assets/add.image.jpg");
  }
  if (kIsWeb) {
    return NetworkImage(croppedValue.path);
  } else {
    return FileImage(
      File(
        croppedValue.path,
      ),
    );
  }
}