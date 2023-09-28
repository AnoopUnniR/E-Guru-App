import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

Future<MultipartFile> multipartImageFunction(file) async {
  return kIsWeb
      ? MultipartFile.fromBytes(await file.readAsBytes(), filename: file.name)
      : await MultipartFile.fromFile(file.path);
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
