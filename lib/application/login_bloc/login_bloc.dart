import 'package:dio/dio.dart';
import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/domain/models/login_model.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/domain/models/user_model/user_model.dart';
import 'package:eguru_app/infrastructure/login/login_implementation.dart';
import 'package:eguru_app/infrastructure/shared_prefernce/token_handler.dart';
import 'package:eguru_app/infrastructure/teachers_data/teacher_data_imp.dart';
import 'package:eguru_app/infrastructure/token_decoder/token_decode.dart';
import 'package:eguru_app/infrastructure/user_data/get_user_data.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository;
  UserDataRepository userDataRepository;
  TeachersDataRepository teachersDataRepository = TeachersDataRepository();
  TokenDecoder decoder = TokenDecoder();
  LoginBloc({required this.loginRepository, required this.userDataRepository})
      : super(LoginLoading()) {
    on<LoginRequestedEvent>((event, emit) async {
      emit(LoginLoadingState());
      try {
        Response loginResponse = await loginRepository.loginRequest(
            email: event.email, password: event.password);
        if (loginResponse.statusCode == 200) {
          LoginCredModel token = LoginCredModel.fromJson(loginResponse.data);
          SaveToken.saveToken(token.access);
          int id = TokenDecoder.getUserIdFromToken(token.access);
          final userResponse = await userDataRepository.getUserDataById(id);
          if (userResponse.statusCode == 200) {
            UserModel userModel = UserModel.fromJson(userResponse.data);
            savedUserId = userModel.id;
            if (userModel.isAdmin) {
              return emit(LoginCompleteAsAdmin(userModel: userModel));
            }
            if (userModel.isStudent) {
              return emit(LoginCompleteAsStudent(userModel: userModel));
            }

            if (userModel.isTeacher) {
              final teacherResponse =
                  await teachersDataRepository.getTeacherDataById(id);

              if (teacherResponse.statusCode == 200) {
                UserTeacherModel teacherModel =
                    UserTeacherModel.fromJson(teacherResponse.data);
                savedUserId = teacherModel.id;
                emit(LoginCompleteAsTeacher(teacherModel: teacherModel));
              } else {
                emit(LoginRejected(userResponse.data));
              }
            }
          } else {
            emit(LoginRejected(userResponse.data));
          }
        }
      } catch (e) {
        emit(LoginRejected(e.toString()));
      }
    });
  }
}
