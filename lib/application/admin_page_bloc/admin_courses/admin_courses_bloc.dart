import 'package:dio/dio.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';
import 'package:eguru_app/infrastructure/course/get_all_course.dart';
import 'package:eguru_app/infrastructure/course_teacher/add_new_course.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_courses_event.dart';
part 'admin_courses_state.dart';
part 'admin_courses_bloc.freezed.dart';

class AdminCoursesBloc extends Bloc<AdminCoursesEvent, AdminCoursesState> {
  AddNewCourseRepository addNewCourseRepository = AddNewCourseRepository();
  CourseRepository courseRepository = CourseRepository();
  AdminCoursesBloc() : super(AdminCoursesState.initial()) {
    on<_Started>((event, emit) {
      emit(state.copyWith(courses: event.courses));
    });
    on<Reload>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final response = await courseRepository.getAllCourses();
      final states = response.fold((left) => state.copyWith(isLoading: true),
          (right) => state.copyWith(courses: right, isLoading: false));
      emit(states);
    });
    on<Deleted>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response response =
          await addNewCourseRepository.deleteCourse(event.coursesID);
      if (response.statusCode == 202) {
        emit(state.copyWith(isDeleted: true, isLoading: false));
        add(Reload(coursesID: event.coursesID));
      }
    });
  }
}
