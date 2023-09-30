import 'package:dio/dio.dart';
import 'package:eguru_app/domain/core/multipart_file_chooser/multipart_file.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:universal_io/io.dart'as universal ;

class NewCourseModel {
  final String title;
  final List<int> category;
  final XFile image;
  final String description;
  final String duration;
  final String level;
  final int teacher;

  NewCourseModel({
    required this.title,
    required this.category,
    required this.image,
    required this.description,
    required this.duration,
    required this.level,
    required this.teacher,
  });

  Future<FormData> toJsonFormData() async {
    final formData = FormData.fromMap({
      'title': title,
      'cat': category,
      'desc': description,
      'duration': duration,
      'level': level,
      'teacher': teacher,
      'image':await multipartImageFunction(image),
          
    });

    return formData;
  }
}

class NewCourseResponseModel {
  final int id;
  final String title;

  NewCourseResponseModel({required this.id, required this.title});

  factory NewCourseResponseModel.toJson(Map<String, dynamic> json) {
    return NewCourseResponseModel(id: json["id"], title: json["title"]);
  }
}
