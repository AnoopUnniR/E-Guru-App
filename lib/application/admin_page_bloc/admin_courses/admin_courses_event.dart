part of 'admin_courses_bloc.dart';

@freezed
class AdminCoursesEvent with _$AdminCoursesEvent {
  const factory AdminCoursesEvent.started({required List<CourseModel> courses}) = _Started;
  const factory AdminCoursesEvent.deleted({
    required int coursesID}) = Deleted;
    const factory AdminCoursesEvent.reload({
    required int coursesID}) = Reload;
}