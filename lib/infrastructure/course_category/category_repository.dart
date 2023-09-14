import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/domain/core/failures/main_failures.dart';
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';
import 'package:either_dart/either.dart';

class CategoryRepository {
  final dio = Dio();
  Future<Either<MainFailures, List<CategoryModel>>> allCatagory() async {
    Response? response;
    try {
      response = await dio.get(
        Url.getAllCatagoriesUrl,
        options: await HeaderToken.headerToken(),
      );
      final List<CategoryModel> category = [];
      for (var json in response.data) {
        category.add(CategoryModel.fromJson(json));
      }
      return Right(category);
    } catch (e) {
      return const Left(MainFailures.clientFailures());
      // throw Exception('something went wrong while login');
    }
  }

  Future<Response> addCatagory(String name) async {
    Response? response;
    FormData formData = FormData.fromMap({
      'name': name,
    });
    try {
      response = await dio.post(Url.addNewCatagoryUrl,
          data: formData, options: await HeaderToken.headerToken());
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Either<MainFailures, bool>> deleteCourseCatagory(
      int catagoryId) async {
    Response response;

    try {
      response = await dio.post(
          "${AdminUrl.deleteCourseCatagoryUrl}$catagoryId",
          options: await HeaderToken.headerToken());
      if (response.statusCode == 202) {
        return const Right(true);
      }
      return const Left(MainFailures.serverFailures());
    } catch (e) {
      return const Left(MainFailures.clientFailures());
    }
  }
}
