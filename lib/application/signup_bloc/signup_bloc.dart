import 'package:eguru_app/domain/models/signup_model.dart';
import 'package:eguru_app/domain/models/signup_response_model.dart';
import 'package:eguru_app/infrastructure/image_picker/pick_image.dart';
import 'package:eguru_app/infrastructure/signup/signup_imp.dart';
import 'package:eguru_app/infrastructure/user_data/get_user_data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupRepository signupRepository = SignupRepository();
  final ProfileImage profileImage = ProfileImage();
  UserDataRepository userDataRepository = UserDataRepository();
  SignupBloc() : super(SignupInitial()) {
    Response response;
    on<SignupRequestedEvent>(
      (event, emit) async {
        emit(SignupLoading());
        try {
          response = await signupRepository.signupRequest(event.signupCreds);
          if (response.statusCode == 201) {
            SignupResponse signupModel = SignupResponse.fromJson(response.data);
            emit(SignupAccepted(signupModel: signupModel));
          }
        } catch (e) {
          emit(SignupRejected(e.toString()));
        }
      },
    );
    on<SignupImage>((event, emit) async {
      CroppedFile? imageFile;
      if (kIsWeb) {
        XFile? image;
        image = await PickImage.pickImage();
        if (image == null) return;
        imageFile = CroppedFile(image.path);
      } else {
        imageFile = await profileImage.selectImage(event.sourse);
        if (imageFile == null) return;
      }
      emit(SignupImageLoading(imageFile));
    });
  }
}
