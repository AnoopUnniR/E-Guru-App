part of 'admin_teacher_bloc.dart';

@freezed
class AdminTeacherEvent with _$AdminTeacherEvent {
  const factory AdminTeacherEvent.started({
    required UserTeacherModel teacher
  }) = _Started;
}