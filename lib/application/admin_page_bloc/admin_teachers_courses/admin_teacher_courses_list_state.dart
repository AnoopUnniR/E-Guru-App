part of 'admin_teacher_courses_list_bloc.dart';

@freezed
class AdminTeacherCoursesListState with _$AdminTeacherCoursesListState {
  const factory AdminTeacherCoursesListState.started(
      {required List<CourseResponseModel> courses,
      required bool isLoading,
      required bool isDeleted}) = Started;

  factory AdminTeacherCoursesListState.initial() =>
     const AdminTeacherCoursesListState.started(courses: [], isLoading: false,isDeleted: false);
}
