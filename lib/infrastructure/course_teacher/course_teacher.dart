import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';

class CourseTeachersRepository {
  final dio = Dio();
  Future<Response> getCoursesTeacher(int id) async {
  Response response;
    try {
      response = await dio.get("${Url.getCoursesByTeachersIdUrl}$id",
      options: await HeaderToken.headerToken());
    } catch (e) {
      throw Exception(e.toString());
    }
    return response;
  }
}
