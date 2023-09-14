part of 'search_page_bloc.dart';

@freezed
class SearchPageState with _$SearchPageState {
  const factory SearchPageState.search(
      {required List<CourseModel> courses,
      required bool isLoading,
      required bool isError}) = Search;

  factory SearchPageState.inital() =>
    const  SearchPageState.search(courses: [], isLoading: false, isError: true);
}
