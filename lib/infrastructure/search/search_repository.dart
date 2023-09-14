import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';

class SearchRepository{
    final dio = Dio();
  Future<Response> getSearchCourses(String value) async {
  Response response;
    try {
      response = await dio.get("${Url.searchCoursesUrl}$value",
      options: await HeaderToken.headerToken());
    } catch (e) {
      throw Exception(e.toString());
    }
    return response;
  } 
}