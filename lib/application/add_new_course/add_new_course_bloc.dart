import 'package:dio/dio.dart';
import 'package:eguru_app/domain/models/course_catagory/create_course_model.dart';
import 'package:eguru_app/domain/models/course_model/course_response.dart';
import 'package:eguru_app/infrastructure/course_teacher/add_new_course.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_new_course_event.dart';
part 'add_new_course_state.dart';
part 'add_new_course_bloc.freezed.dart';

class AddNewCourseBloc extends Bloc<AddNewCourseEvent, AddNewCourseState> {
  AddNewCourseRepository addNewCourseRepository = AddNewCourseRepository();
  AddNewCourseBloc() : super(AddNewCourseState.initial()) {
    on<CourseAdded>((event, emit) async {
      if (event.newCourseModel == null) {
        return emit(state.copyWith(isLoading: false));
      } else {
        emit(state.copyWith(isLoading: true));
        Response response =
            await addNewCourseRepository.addNewCourse(event.newCourseModel!);
        if (response.statusCode == 201) {
          return emit(state.copyWith(
              courseResponse: CourseResponse.fromJson(response.data),
              isLoading: false,
              isLoaded: true,
              isEdited: false,
              isDeleted: false)
            ,);
        }
      }
    });
    on<CourseEdited>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response response = await addNewCourseRepository.editCourse(
          event.newCourseModel!, event.courseId);
      if (response.statusCode == 200) {
        emit(state.copyWith(isEdited: true,isLoaded: false));
      }
    });
    on<CourseDeleted>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response response =
          await addNewCourseRepository.deleteCourse(event.courseId);
      if (response.statusCode == 202) {
        emit(state.copyWith(isDeleted: true,isLoading: false));
      }
    });
  }
}
