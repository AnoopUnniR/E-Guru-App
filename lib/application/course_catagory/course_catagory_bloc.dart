import 'package:dio/dio.dart';
import 'package:eguru_app/infrastructure/course_category/category_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_catagory_event.dart';
part 'course_catagory_state.dart';
part 'course_catagory_bloc.freezed.dart';

class CourseCatagoryBloc
    extends Bloc<CourseCatagoryEvent, CourseCatagoryState> {
  CategoryRepository categoryRepository = CategoryRepository();
  CourseCatagoryBloc() : super(CourseCatagoryState.initial()) {
    on<CourseAdded>((event, emit) async {
      final response = await categoryRepository.allCatagory();
      final states = response.fold(
        (left) => state.copyWith(isError:true),
        (right) => state.copyWith(isLoading: false, catagory: right) ,
      );
      return emit(states);
    });

    on<AddNewCourse>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response response = await categoryRepository.addCatagory(event.name);
      if (response.statusCode == 201) {
        add(const CourseAdded());
      }
    });
  }
}
