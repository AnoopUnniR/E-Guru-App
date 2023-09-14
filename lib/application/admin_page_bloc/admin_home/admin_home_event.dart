part of 'admin_home_bloc.dart';

@freezed
class AdminHomeEvent with _$AdminHomeEvent {
  const factory AdminHomeEvent.started() = _Started;
  const factory AdminHomeEvent.teacherListEvent() = TeacherListEvent;
  const factory AdminHomeEvent.studentListEvent() = StudentListEvent;
  const factory AdminHomeEvent.teacherRequestListEvent() = TeacherRequestListEvent;
  const factory AdminHomeEvent.categoryListEvent() = CategoryListEvent;
  const factory AdminHomeEvent.courseListEvent() = CourseListEvent;
}