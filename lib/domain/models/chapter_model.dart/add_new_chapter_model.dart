
import 'package:dio/dio.dart';
import 'package:eguru_app/domain/core/multipart_file_chooser/multipart_file.dart';
import 'package:file_picker/file_picker.dart';

class CreateChapterModel {
  final String title;
  final int course;
  final int order;
  final FilePickerResult video;
 CreateChapterModel(
      {required this.title,
      required this.course,
      required this.order,
      required this.video});
  Future<FormData> toJsonFormData() async {
    FormData formData = FormData.fromMap({
      'title': title,
      "course": course,
      "video": await multipartVideoFunction(video),
      "order": order
    });
    return formData;
  }
}
