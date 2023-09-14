import 'dart:io';

import 'package:dio/dio.dart';

class CreateChapterModel {
  final String title;
  final int course;
  final int order;
  final File video;

 CreateChapterModel(
      {required this.title,
      required this.course,
      required this.order,
      required this.video});

  Future<FormData> toJsonFormData() async {
    FormData formData = FormData.fromMap({
      'title': title,
      "course": course,
      "video": await MultipartFile.fromFile(video.path,filename: video.path),
      "order": order
    });
    return formData;
  }
}
