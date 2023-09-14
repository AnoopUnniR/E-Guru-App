
import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';

class EnrollCourseRepository {
  final dio = Dio();
  Future<Response> enrollCourse(int courseId) async {
    Response response;
    try {
      response = await dio.post("${Url.enrollCourseUrl}$courseId",
          options: await HeaderToken.headerToken());
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Response> checkEnroll(int courseId) async {
    Response response;
    try {
      response = await dio.get("${Url.checkEnrollCourseUrl}$courseId",
          options: await HeaderToken.headerToken());
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Response> unEnrollCourse(int courseId) async {
    Response response;
    try {
      response = await dio.post("${Url.unEnrollCourseUrl}$courseId",
          options: await HeaderToken.headerToken());
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
