import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';

class UserDataRepository {
  final dio = Dio();

  Future<Response> getUserDataById(int id) async {
    Response response;
    try {
      response = await dio.get("${Url.getUserUrl}$id");
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
