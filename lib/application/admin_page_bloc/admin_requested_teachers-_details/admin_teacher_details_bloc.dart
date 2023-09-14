import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/infrastructure/admin/teacher_request_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_teacher_details_event.dart';
part 'admin_teacher_details_state.dart';
part 'admin_teacher_details_bloc.freezed.dart';

class AdminTeacherDetailsBloc
    extends Bloc<AdminTeacherDetailsEvent, AdminTeacherDetailsState> {
  TeacherRequestRepository teacherRequestRepository =
      TeacherRequestRepository();
  AdminTeacherDetailsBloc() : super(AdminTeacherDetailsState.initial()) {
    on<_Started>((event, emit) {
      emit(state.copyWith(teacher: event.teacher,isVerified: false,isRejected:false,));
    });
    on<Verified>((event, emit) async {
      emit(state.copyWith(isVerifyLoading: true));
      final data =
          await teacherRequestRepository.verifyTeacher(event.teacherId);
      final states = data.fold((left) {
        return state.copyWith(isError: true,isVerifyLoading: false);
      }, (right) {
        return state.copyWith(isVerified: true,isVerifyLoading: false);
      });
      emit(states);
    });

    on<Reject>((event, emit) async {
      emit(state.copyWith(isRejectLoading: true));
      final data =
          await teacherRequestRepository.rejectTeacher(event.teacherId);
      final states = data.fold((left) {
        return state.copyWith(isError: true,isRejectLoading: false);
      }, (right) {
        return state.copyWith(isRejected: true,isRejectLoading: false);
      });
      emit(states);
    });
  }
}
