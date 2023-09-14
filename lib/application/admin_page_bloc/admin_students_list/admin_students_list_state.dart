part of 'admin_students_list_bloc.dart';

@freezed
class AdminStudentsListState with _$AdminStudentsListState {
  const factory AdminStudentsListState.started({
    required List<UserModel> userList,
    required bool isLoading 
  }) = Started;
  factory AdminStudentsListState.initial() =>const AdminStudentsListState.started(userList: [],isLoading: false);
}
