import 'package:eguru_app/domain/models/course_model/course_model.dart';
import 'package:eguru_app/infrastructure/course/get_all_course.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_page_event.dart';
part 'course_page_state.dart';
part 'course_page_bloc.freezed.dart';

class CoursePageBloc extends Bloc<CoursePageEvent, CoursePageState> {
  CourseRepository courseRepository = CourseRepository();
  CoursePageBloc() : super(CoursePageState.initial()) {
    on<CourseEventStarted>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final response = await courseRepository.getAllCourses();
      final states = response.fold((left) => state.copyWith(isError: true),
          (right) => state.copyWith(courses: right, isLoading: false));
      emit(states);
    });
    on<CourseEventEnrolled>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final response =
          await courseRepository.getAllEnrolledCourses(event.userId);
      final states = response.fold((left) {
        return state.copyWith(isError: true, courses: []);
      }, (right) {
        List<CourseModel> courses = [];
        for (var element in right.data) {
          courses.add(CourseModel.fromJson(element));
        }
        return state.copyWith(courses: courses, isLoading: false);
      });
      emit(states);
    });
    on<CourseEventCatagory>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response response =
          await courseRepository.getAllCoursesByCatagory(event.catagoryId);
      if (response.statusCode == 200) {
        List<CourseModel> courses = [];
        for (var element in response.data) {
          courses.add(CourseModel.fromJson(element));
        }
        emit(state.copyWith(courses: courses, isLoading: false));
      } else {
        emit(state.copyWith(isError: true));
      }
    });
  }
}
