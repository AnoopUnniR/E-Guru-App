import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';

class TeachersDataRepository{
  final dio = Dio();

  Future<Response> getTeacherDataById(int id) async {
    Response response;
    try {
      response = await dio.get("${Url.getTeacherUrl}$id");
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}