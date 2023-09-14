part of 'course_page_bloc.dart';

@freezed
class CoursePageState with _$CoursePageState {
  const factory CoursePageState.started(
      {required List<CourseModel> courses, required bool isLoading,required bool isError}) = Started;
  factory CoursePageState.initial() =>
      const CoursePageState.started(isLoading: false, courses: [],isError: false);
}
