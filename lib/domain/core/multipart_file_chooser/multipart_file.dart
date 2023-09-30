import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:image_cropper/image_cropper.dart';

Future<MultipartFile> multipartImageFunction(file) async {
  if (kIsWeb) {
    if (file is CroppedFile) {
      String name = "${file.path.split("-").last}${".jpg"}";
      return MultipartFile.fromBytes(await file.readAsBytes(),
          filename: name);
    }
    return MultipartFile.fromBytes(await file.readAsBytes(),
        filename: file.name);
  }
  return await MultipartFile.fromFile(file.path);
}

Future<MultipartFile> multipartVideoFunction(FilePickerResult file) async {
  if (kIsWeb) {
    PlatformFile platformFile = file.files.single;
    Uint8List? videoBytes = platformFile.bytes;
    return MultipartFile.fromBytes(videoBytes!, filename: platformFile.name);
  } else {
    File? videoFile = File(file.files.single.path!);
    return MultipartFile.fromFile(videoFile.path,
        filename: videoFile.path.split("/").last);
  }
}
