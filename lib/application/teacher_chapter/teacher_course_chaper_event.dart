part of 'teacher_course_chaper_bloc.dart';

@freezed
class TeacherCourseChaperEvent with _$TeacherCourseChaperEvent {
  const factory TeacherCourseChaperEvent.started(
    int courseId
  ) = Started;
  const factory TeacherCourseChaperEvent.delete(
   {required int chapterId,
   required int courseId}
  ) = Delete;
}