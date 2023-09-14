import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/domain/models/course_catagory/add_new_chapter_model.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';

class AddNewChapterRepository {
  final dio = Dio();
  Future<Response> addNewChapter(CreateChapterModel chapterModel) async {
    Response response;
    try {
      response = await dio.post(Url.addNewChapterUrl,
      data: await chapterModel.toJsonFormData(),
          options: await HeaderToken.headerToken());
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
