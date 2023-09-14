import 'package:dio/dio.dart';
import 'package:eguru_app/domain/models/user_model/user_model.dart';
import 'package:eguru_app/infrastructure/shared_prefernce/token_handler.dart';
import 'package:eguru_app/infrastructure/token_decoder/token_decode.dart';
import 'package:eguru_app/infrastructure/user_data/get_user_data.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_page_event.dart';
part 'profile_page_state.dart';

class ProfilePageBloc extends Bloc<ProfilePageEvent, ProfilePageState> {
  UserDataRepository userDataRepository = UserDataRepository();
  ProfilePageBloc() : super(ProfilePageInitial()) {
    on<ProfilePageUpdateEvent>((event, emit) async {
      String? token = await SaveToken.retreiveToken();
      int id = TokenDecoder.getUserIdFromToken(token!);
      Response response = await userDataRepository.getUserDataById(id);
      if (response.statusCode == 200) {
        UserModel userModel = UserModel.fromJson(response.data);
        if (userModel.isSubmit) {
          emit(const ProfilePageStudentUpdate(isSubmit: true));
        }
        if (userModel.isStaff) {
          emit(const ProfilePageStudentUpdate(isSubmit: false));
        }
      }
    });
  }
}
