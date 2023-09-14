part of 'admin_teacher_details_bloc.dart';

@freezed
class AdminTeacherDetailsEvent with _$AdminTeacherDetailsEvent {
  const factory AdminTeacherDetailsEvent.started({
    required UserTeacherModel teacher
  }) = _Started;
  const factory AdminTeacherDetailsEvent.verified({
    required int teacherId
  }) = Verified;
  const factory AdminTeacherDetailsEvent.reject({
    required int teacherId
  }) = Reject;
}