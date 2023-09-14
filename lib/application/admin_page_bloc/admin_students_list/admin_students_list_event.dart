part of 'admin_students_list_bloc.dart';

@freezed
class AdminStudentsListEvent with _$AdminStudentsListEvent {
  const factory AdminStudentsListEvent.started({
    required List<UserModel> userList
  }) = _Started;
}