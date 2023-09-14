part of 'admin_teacher_courses_list_bloc.dart';

@freezed
class AdminTeacherCoursesListEvent with _$AdminTeacherCoursesListEvent {
  const factory AdminTeacherCoursesListEvent.started(
    {required List<CourseResponseModel> courses}
  ) = _Started;
  const factory AdminTeacherCoursesListEvent.reload(
{required int teacherId}
  ) = _Reload;
  const factory AdminTeacherCoursesListEvent.delete(
    {required int courseId,
    required int teacherId }
  ) = Delete;
}