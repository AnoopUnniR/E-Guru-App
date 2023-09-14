import 'package:dio/dio.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/infrastructure/course_teacher/course_teacher.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_teacher_event.dart';
part 'admin_teacher_state.dart';
part 'admin_teacher_bloc.freezed.dart';

class AdminTeacherBloc extends Bloc<AdminTeacherEvent, AdminTeacherState> {
  CourseTeachersRepository courseTeachersRepository =
      CourseTeachersRepository();
  AdminTeacherBloc() : super(AdminTeacherState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(teacher: event.teacher, isLoading: true));
      Response response =
          await courseTeachersRepository.getCoursesTeacher(event.teacher.id);
        if (response.statusCode == 200) {
          final List<CourseResponseModel> course = [];
          for (var value in response.data) {
            course.add(CourseResponseModel.fromJson(value));
          }
          return emit(state.copyWith(course: course, isLoading: false));
        }
    });
  }
}
