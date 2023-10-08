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
    return FormData.fromMap({
      "mobile_number": mobileNumber,
      "address": address,
      "country": country,
      "highest_qualification": highestQualification,
      "skills": skills,
      "name": name,
      'resume': await MultipartFile.fromFile(
        resume.path,
        filename: resume.path.split('/').last,
      ),
      'image': await MultipartFile.fromFile(image.path),
      'is_submit': "true",
    });


    //     FormData formData = FormData();
    //   formData.fields
    //     ..add(MapEntry("mobile_number",mobileNumber))
    //     ..add(MapEntry("address", address))
    //     ..add(MapEntry("country", country))
    //     ..add(MapEntry("highest_qualification",
    //         highestQualification))
    //     ..add(MapEntry("skills", skills))
    //     ..add(const MapEntry("is_submit", "true"))
    //     // ..add(const MapEntry("image", "null"))
    //     ..add(MapEntry("name",name));
    // formData.files.add(MapEntry(
    //     'resume',
    //     await MultipartFile.fromFile(resume.path,
    //         filename: resume.path.split('/').last)));
    // // formData.files.add(MapEntry('image', MultipartFile.fromFileSync(image)));
    // return formData;
  }
}
