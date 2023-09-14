import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';

class ReviewRepository {
  final dio = Dio();
  Future<Response> getAllReviews(int courseId) async {
    Response response;
    try {
      response = await dio.get("${baseUrl}course/$courseId/reviews/",
          options: await HeaderToken.headerToken());
    } catch (e) {
      throw Exception(e.toString());
    }
    return response;
  }

   Future<Response> addReviews(String review, int rating, int courseId) async {
    Response response;
    try {
      response = await Dio().post(
        "${baseUrl}course/$courseId/reviews/",
        data: {"review": review, "rating": rating},
        options: await HeaderToken.headerToken(),
      );
    } catch (e) {
      throw Exception(e.toString());
    }
    return response;
  }

}
