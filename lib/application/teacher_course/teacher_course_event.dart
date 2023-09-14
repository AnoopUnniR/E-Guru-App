part of 'teacher_course_bloc.dart';

@freezed
class TeacherCourseEvent with _$TeacherCourseEvent {
  const factory TeacherCourseEvent.loading() = Loading;
  const factory TeacherCourseEvent.teacherCoursesLoaded({required int id}) = TeacherCoursesLoaded;
}