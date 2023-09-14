part of 'add_new_course_bloc.dart';

@freezed
class AddNewCourseEvent with _$AddNewCourseEvent {
  const factory AddNewCourseEvent.courseAdded(
    final NewCourseModel? newCourseModel,
  ) = CourseAdded;
  const factory AddNewCourseEvent.courseEdited(
    final NewCourseModel? newCourseModel,
    final int courseId
  ) = CourseEdited;
 const factory AddNewCourseEvent.courseDeleted(
    final int courseId
  ) = CourseDeleted;
}