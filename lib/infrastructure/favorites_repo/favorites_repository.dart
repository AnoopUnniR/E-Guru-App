import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/domain/core/failures/main_failures.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';
import 'package:either_dart/either.dart';

class FavoritesRepository {
  final dio = Dio();
  Future<Either<MainFailures, Response>> getAllFavorites() async {
    Response response;
    try {
      response = await dio.get(Url.getAllFavoritesUrl,
          options: await HeaderToken.headerToken());
      return Right(response);
    } catch (e) {
      return const Left(MainFailures.clientFailures());
    }
  }

  Future<Response> addToFavorites(int courseId) async {
    Response response;
    try {
      response = await dio.post(Url.addToFavoritesUrl,
          data: FormData.fromMap({"course_id": courseId}),
          options: await HeaderToken.headerToken());
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Response> removeFavorites(int courseId) async {
    Response response;
    try {
      response = await dio.delete("${Url.removeFavoritesUrl}$courseId",
          options: await HeaderToken.headerToken());
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
