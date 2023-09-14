import 'package:dio/dio.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/infrastructure/course_teacher/add_new_course.dart';
import 'package:eguru_app/infrastructure/course_teacher/course_teacher.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_teacher_courses_list_event.dart';
part 'admin_teacher_courses_list_state.dart';
part 'admin_teacher_courses_list_bloc.freezed.dart';

class AdminTeacherCoursesListBloc
    extends Bloc<AdminTeacherCoursesListEvent, AdminTeacherCoursesListState> {
  AddNewCourseRepository addNewCourseRepository = AddNewCourseRepository();
  CourseTeachersRepository courseTeachersRepository =
      CourseTeachersRepository();
  AdminTeacherCoursesListBloc()
      : super(AdminTeacherCoursesListState.initial()) {
    on<_Started>((event, emit) {
      emit(state.copyWith(courses: event.courses));
    });
    on<_Reload>((event, emit) async {
      Response response =
          await courseTeachersRepository.getCoursesTeacher(event.teacherId);
      if (response.statusCode == 200) {
        final List<CourseResponseModel> course = [];
        for (var value in response.data) {
          course.add(CourseResponseModel.fromJson(value));
        }
        return emit(state.copyWith(courses: course, isLoading: false));
      }
    });
    on<Delete>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response response =
          await addNewCourseRepository.deleteCourse(event.courseId);
      if (response.statusCode == 202) {
        emit(state.copyWith(isDeleted: true, isLoading: false));
        add(AdminTeacherCoursesListEvent.reload(teacherId: event.teacherId));
      }
    });
  }
}
