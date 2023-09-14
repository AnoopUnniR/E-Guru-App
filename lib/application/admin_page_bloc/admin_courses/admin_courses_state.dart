part of 'admin_courses_bloc.dart';

@freezed
class AdminCoursesState with _$AdminCoursesState {
  const factory AdminCoursesState.started({
    required bool isLoading,
    required bool isError,
    required List<CourseModel>courses,
    required bool isDeleted,
  }) = Started;

   factory AdminCoursesState.initial() =>const AdminCoursesState.started(isLoading: false, isError: true, courses: [],isDeleted: false);
}
