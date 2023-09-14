

import 'package:dio/dio.dart';
import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:eguru_app/domain/core/failures/main_failures.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/domain/models/user_model/user_model.dart';
import 'package:eguru_app/infrastructure/header_token/header_token.dart';
import 'package:either_dart/either.dart';

class AdminServices {
  final dio = Dio();
  //all students
  Future<Either<MainFailures, List<UserModel>>>
      getAllStudentRepository() async {
    try {
      final Response response = await dio.get(AdminUrl.getAllStudents,
          options: await HeaderToken.headerToken());

      if (response.statusCode == 200) {
        // final data = [];
        // for (var element in response.data) {
        //   data.add(UserModel.fromJson(element));
        // }
        List<UserModel> val =
            (response.data as List).map((e) => UserModel.fromJson(e)).toList();
        return Right(val);
      }else{
        return const Left(MainFailures.serverFailures());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailures());
    }
  }


// all teachers
  Future<Either<MainFailures, List<UserTeacherModel>>>
      getAllTeachersRepository() async {
    try {
      final Response response = await dio.get(AdminUrl.getAllTeachers,
          options: await HeaderToken.headerToken());

      if (response.statusCode == 200) {
        // final data = [];
        // for (var element in response.data) {
        //   data.add(UserModel.fromJson(element));
        // }
        List<UserTeacherModel> val =
            (response.data as List).map((e) => UserTeacherModel.fromJson(e)).toList();
        return Right(val);
      }else{
        return const Left(MainFailures.serverFailures());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailures());
    }
  }
//requested teachers
  Future<Either<MainFailures, List<UserTeacherModel>>>
      getAllTeacherRequestsRepository() async {
    try {
      final Response response = await dio.get(AdminUrl.requestedTeacherUrl,
          options: await HeaderToken.headerToken());

      if (response.statusCode == 200) {
        // final data = [];
        // for (var element in response.data) {
        //   data.add(UserModel.fromJson(element));
        // }
        List<UserTeacherModel> val =
            (response.data as List).map((e) => UserTeacherModel.fromJson(e)).toList();
        return Right(val);
      }else{
        return const Left(MainFailures.serverFailures());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailures());
    }
  }
}
