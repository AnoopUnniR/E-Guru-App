import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/domain/models/signup_model.dart';

class SignupRepository {
  final dio = Dio();
  Future<Response> signupRequest(SignUpCredentials data) async {
    Response response;
    try {
      response = await dio.post(Url.singUpUrl,
          data: await data.signUpCredentialstoFormData());
      return response;
    } catch (e) {
      throw Exception("something went wrong while signing up");
    }
  }
}
