import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/domain/models/course_catagory/create_course_model.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';

class AddNewCourseRepository {
  final dio = Dio();
  Future<Response> addNewCourse(NewCourseModel newCourse) async {
    Response response;
   
    try {
      response = await dio.post(Url.addNewCourseUrl,
          data: await newCourse.toJsonFormData(),
          options: await HeaderToken.headerToken());
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
    Future<Response> editCourse(NewCourseModel newCourse,int courseId) async {
    Response response;
    try {
      response = await dio.put("${Url.editCourseUrl}$courseId",
          data: await newCourse.toJsonFormData(),
          options: await HeaderToken.headerToken());
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
    Future<Response> deleteCourse(int courseId) async {
    Response response;
    try {
      response = await dio.post("${Url.deleteCourseUrl}$courseId",
          options: await HeaderToken.headerToken());
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
