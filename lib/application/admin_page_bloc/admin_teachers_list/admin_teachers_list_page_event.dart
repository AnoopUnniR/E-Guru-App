part of 'admin_teachers_list_page_bloc.dart';

@freezed
class AdminTeachersListPageEvent with _$AdminTeachersListPageEvent {
  const factory AdminTeachersListPageEvent.started({required List<UserTeacherModel> teachersList}) = _Started;
}