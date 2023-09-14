import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_cropper/image_cropper.dart';

class TeacherApplyModel {
  final String name;
  final String mobileNumber;
  final File resume;
  final String address;
  final String country;
  final String highestQualification;
  final String skills;
  final CroppedFile image;

  TeacherApplyModel({
    required this.name,
    required this.mobileNumber,
    required this.resume,
    required this.address,
    required this.country,
    required this.highestQualification,
    required this.skills,
    required this.image,
  });


  Future<FormData> toFormData() async {
        FormData formData = FormData();
      formData.fields
        ..add(MapEntry("mobile_number",mobileNumber))
        ..add(MapEntry("address", address))
        ..add(MapEntry("country", country))
        ..add(MapEntry("highest_qualification",
            highestQualification))
        ..add(MapEntry("skills", skills))
        ..add(const MapEntry("is_submit", "true"))
        // ..add(const MapEntry("image", "null"))
        ..add(MapEntry("name",name));
    formData.files.add(MapEntry(
        'resume',
        await MultipartFile.fromFile(resume.path,
            filename: resume.path.split('/').last)));
    // formData.files.add(MapEntry('image', MultipartFile.fromFileSync(image)));
    return formData;
  }
}

// class FileConverter implements JsonConverter<File, String> {
//   const FileConverter();
//   @override
//   File fromJson(String json) {
//     return File(json);
//   }
//   @override
//   String toJson(File object) {
//     return object.path;
//   }
// }

////////////////////////////////////////////////////////////////////////////////
  // FormData formData = FormData();
    // formData.fields
    //   ..add(MapEntry("mobile_number", teacherApplyModel.mobileNumber))
    //   ..add(MapEntry("address", teacherApplyModel.address))
    //   ..add(MapEntry("country", teacherApplyModel.country))
    //   ..add(MapEntry(
    //       "highest_qualification", teacherApplyModel.highestQualification))
    //   ..add(MapEntry("skills", teacherApplyModel.skills))
    //   ..add(const MapEntry("is_submit", "true"))
    //   // ..add(const MapEntry("image", "null"))
    //   ..add(MapEntry("name", teacherApplyModel.name));

    // formData.files.add(
    //   MapEntry(
    //     "resume",
    //     await MultipartFile.fromFile(
    //       teacherApplyModel.resume.path,
    //       filename: teacherApplyModel.resume.path.split('/').last,
    //     ),
    //   ),
    // );
    // formData.files.add(MapEntry(
    //     "image", await
    //      MultipartFile.fromFile(teacherApplyModel.image.path),),);