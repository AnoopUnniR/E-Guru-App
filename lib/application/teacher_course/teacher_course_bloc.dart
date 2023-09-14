import 'package:dio/dio.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/infrastructure/course_teacher/course_teacher.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_course_event.dart';
part 'teacher_course_state.dart';
part 'teacher_course_bloc.freezed.dart';

class TeacherCourseBloc extends Bloc<TeacherCourseEvent, TeacherCourseState> {
  CourseTeachersRepository courseTeachersRepository =
      CourseTeachersRepository();
  TeacherCourseBloc() : super(TeacherCourseState.initial()) {
    on<TeacherCoursesLoaded>((event, emit) async {
      Response response =
          await courseTeachersRepository.getCoursesTeacher(event.id);
      if (response.statusCode == 200) {
        final List<CourseResponseModel> course = [];
        for (var value in response.data) {
          course.add(CourseResponseModel.fromJson(value));
        }
        return emit(state.copyWith(course: course, isLoading: false));
      } else {
        throw Exception("error while loading data of teachers courses");
      }
    });
  }
}
