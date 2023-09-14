//model for converting signup credentials into json for post method body
import 'package:dio/dio.dart';
import 'package:image_cropper/image_cropper.dart';

class SignUpCredentials {
  final String email;
  final String password;
  final String rePassword;
  final String name;
  final CroppedFile? image;

  SignUpCredentials(
      {required this.email,
      required this.password,
      required this.rePassword,
      required this.name,
      this.image});

  Map<String, dynamic> signUpCredentialstojson() {
    return {
      "email": email,
      "password": password,
      "re_password": rePassword,
      "name": name
    };
  }

  
  Future<FormData> signUpCredentialstoFormData() async {
    FormData form = FormData.fromMap({
      "email": email,
      "password": password,
      "re_password": rePassword,
      "name": name,
      'image': image==null? null: await MultipartFile.fromFile(image!.path)
    });
    return form;
  }
}
