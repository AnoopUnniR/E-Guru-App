part of 'admin_teachers_list_page_bloc.dart';

@freezed
class AdminTeachersListPageState with _$AdminTeachersListPageState {
  const factory AdminTeachersListPageState.started(
      {required List<UserTeacherModel> teacherList}) = Started;

  factory AdminTeachersListPageState.initial() =>
     const AdminTeachersListPageState.started(teacherList: []);
}
