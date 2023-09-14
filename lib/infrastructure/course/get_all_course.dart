
import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/domain/core/failures/main_failures.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';
import 'package:either_dart/either.dart';

class CourseRepository {
  final dio = Dio();
  Future<Either<MainFailures, List<CourseModel>>> getAllCourses() async {
    try {
      final response = await dio.get(Url.getAllCourses,
          options: await HeaderToken.headerToken());
      if (response.statusCode == 200) {
        List<CourseModel> courses = [];
        for (var element in response.data) {
          courses.add(CourseModel.fromJson(element));
        }
        return Right(courses);
      }
      return const Left(MainFailures.serverFailures());
    } catch (e) {
      return const Left(MainFailures.clientFailures());
    }
  }

  Future<Either<MainFailures, Response>> getAllEnrolledCourses(
      int userId) async {
    Response response;
    try {
      response = await dio.get("${Url.getAllEnrolledCoursesUrl}$userId",
          options: await HeaderToken.headerToken());
      return Right(response);
    } catch (e) {
      return const Left(MainFailures.serverFailures());
      // throw Exception(e.toString());
    }
  }

  Future<Response> getAllCoursesByCatagory(int catagoryId) async {
    Response response;
    try {
      response = await dio.get("${Url.getAllCoursesByCategoryUrl}$catagoryId",
          options: await HeaderToken.headerToken());
    } catch (e) {
      throw Exception(e.toString());
    }
    return response;
  }
}
