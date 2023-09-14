import 'package:eguru_app/domain/models/teachers_model/teachers_model.dart';
import 'package:eguru_app/infrastructure/teacher_signup/teacher_signup_imp.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';


part 'teacher_registration_event.dart';
part 'teacher_registration_state.dart';

class TeacherRegistrationBloc
    extends Bloc<TeacherRegistrationEvent, TeacherRegistrationState> {
  TeacherSignupRepository teacherSignupRepository = TeacherSignupRepository();
  TeacherRegistrationBloc() : super(TeacherRegistrationInitial()) {
    on<TeachersRegistrationSubmittedEvent>((event, emit) async {
      emit(TeacherRegistrationLoading());

      Response response;
      response = await teacherSignupRepository
          .teacherSignupRequest(event.teacherApplyModel);
      if (response.statusCode == 201) {
        emit(TeacherRegistrationApplied());
      } else {
        emit(TeacherRegistrationFailed());
      }
    });
  }
}
