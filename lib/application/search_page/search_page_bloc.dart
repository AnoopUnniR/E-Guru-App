import 'package:eguru_app/domain/models/course_model/course_model.dart';
import 'package:eguru_app/infrastructure/search/search_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_page_event.dart';
part 'search_page_state.dart';
part 'search_page_bloc.freezed.dart';

class SearchPageBloc extends Bloc<SearchPageEvent, SearchPageState> {
  SearchRepository searchRepository = SearchRepository();
  SearchPageBloc() : super(SearchPageState.inital()) {
    on<SearchPageEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response response = await searchRepository.getSearchCourses(event.value);
      if (response.statusCode == 200) {
        List<CourseModel> courses = [];
        for (var element in response.data) {
          courses.add(CourseModel.fromJson(element));
        }
        return emit(state.copyWith(courses: courses, isLoading: false));
      }
      {
        emit(state.copyWith(courses: []));
      }
    });
  }
}
