part of 'course_catagory_bloc.dart';

@freezed
class CourseCatagoryEvent with _$CourseCatagoryEvent {
  const factory CourseCatagoryEvent.loading() = Loading;
  const factory CourseCatagoryEvent.courseAdded() = CourseAdded;
  const factory CourseCatagoryEvent.addNewCourse(String name) = AddNewCourse;
}
