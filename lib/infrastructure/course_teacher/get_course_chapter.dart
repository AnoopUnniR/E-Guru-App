import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';

class ChapterRepository {
  final dio = Dio();
  Future<Response> getChapters(int courseId) async {
    Response response;
    try {
      response = await dio.get("${baseUrl}course/$courseId/chapter-list/");
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<Response> deleteChapters(int chapterId) async {
    Response response;
    try {
      response = await dio.post("${Url.deleteChapterUrl}$chapterId",
          options: await HeaderToken.headerToken());
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
