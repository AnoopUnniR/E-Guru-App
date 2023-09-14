part of 'teacher_course_bloc.dart';

@freezed
class TeacherCourseState with _$TeacherCourseState {
  const factory TeacherCourseState({
     required bool isLoading,
  required  List<CourseResponseModel> course,
  }) = _TeacherCourseState;
 
  factory TeacherCourseState.initial() =>const TeacherCourseState(course: [],isLoading: true);
}

