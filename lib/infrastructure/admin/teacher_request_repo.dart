
import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/domain/core/failures/main_failures.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';
import 'package:either_dart/either.dart';

class TeacherRequestRepository {
  final dio = Dio();
  Future<Either<MainFailures, bool>> verifyTeacher(int teacherId) async {
    try {
      final data = await dio.post("${Url.verifyTeacherUrl}$teacherId",
          options: await HeaderToken.headerToken());
      if (data.statusCode == 200 || data.statusCode == 201) {
        return const Right(true);
      } else {
        return const Left(MainFailures.clientFailures());
      }
    } catch (e) {
      return const Left(MainFailures.serverFailures());
    }
  }

  Future<Either<MainFailures, bool>> rejectTeacher(int teacherId) async {
    try {
      final data = await dio.post("${Url.rejectTeacherUrl}$teacherId",
          options: await HeaderToken.headerToken());
      if (data.statusCode == 200 || data.statusCode == 201) {
        return const Right(true);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailures());
    }
  }
}
