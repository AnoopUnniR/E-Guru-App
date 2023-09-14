import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';

class LoginRepository {
  final dio = Dio();
  Future<Response> loginRequest({String? email, String? password}) async {
    Response? response;
    try {
      response = await dio
          .post(Url.loginUrl, data: {"email": email, "password": password},
        );
      return response;
    } catch (e) {
      throw Exception('something went wrong while login');
    }
  }
}
