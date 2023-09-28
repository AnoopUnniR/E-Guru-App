
import 'package:eguru_app/domain/core/check_connection/check_internet_connection.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/domain/models/user_model/user_model.dart';
import 'package:eguru_app/infrastructure/shared_prefernce/token_handler.dart';
import 'package:eguru_app/infrastructure/teachers_data/teacher_data_imp.dart';
import 'package:eguru_app/infrastructure/token_decoder/token_decode.dart';
import 'package:eguru_app/infrastructure/user_data/get_user_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

int savedUserId = 0;
String savedUserName = '';
String savedUserPic = '';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  TeachersDataRepository teachersDataRepository = TeachersDataRepository();
  UserDataRepository userDataRepository = UserDataRepository();
  AuthenticationBloc() : super(AuthenticationInitial()) {
    on<AuthenticationCheckEvent>((event, emit) async {
      String? token = await SaveToken.retreiveToken();
      //checking internet connection
      bool isOnline = await checkInternetConnection();
      if (!isOnline) {
        return emit(AutheticationFailedNoInternet());
      }
      try {
        int id = TokenDecoder.getUserIdFromToken(token!);
        final userResponse = await userDataRepository.getUserDataById(id);
        if (userResponse.statusCode == 200) {
          UserModel userModel = UserModel.fromJson(userResponse.data);
          savedUserId = userModel.id;
          savedUserName = userModel.name;
          if(!userModel.isAdmin) savedUserPic = userModel.image!;
          if (userModel.isAdmin) {
            return emit(AuthenticationAccessAcceptedAsAdmin(userModel));
          }
          if (userModel.isStudent) {
            return emit(AuthenticationAccessAcceptedAsStudent(userModel));
          }
          if (userModel.isTeacher) {
            final teacherResponse =
                await teachersDataRepository.getTeacherDataById(id);
            if (teacherResponse.statusCode == 200) {
              UserTeacherModel teacherModel =
                  UserTeacherModel.fromJson(teacherResponse.data);
              savedUserId = teacherModel.id;
              savedUserName = teacherModel.name;
              savedUserPic = teacherModel.image;
              return emit(AuthenticationAccessAcceptedAsTeacher(teacherModel));
            } else {
              return emit(AuthenticationAccessRejected());
            }
          }
        } else {
          return emit(AuthenticationAccessRejected());
        }
        // await Future.delayed(const Duration(seconds: 5));
      } catch (e) {
        emit(AuthenticationAccessRejected());
      }
    });
  }
}
