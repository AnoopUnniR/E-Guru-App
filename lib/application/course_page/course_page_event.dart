part of 'course_page_bloc.dart';

@freezed
class CoursePageEvent with _$CoursePageEvent {
  const factory CoursePageEvent.courseEventStarted() = CourseEventStarted;
  const factory CoursePageEvent.courseEventEnrolled({required int userId}) = CourseEventEnrolled;
  const factory CoursePageEvent.courseEventcatagory({required int catagoryId}) = CourseEventCatagory;
}