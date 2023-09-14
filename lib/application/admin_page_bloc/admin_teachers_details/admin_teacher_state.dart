part of 'admin_teacher_bloc.dart';

@freezed
class AdminTeacherState with _$AdminTeacherState {
  const factory AdminTeacherState.loaded({
    required UserTeacherModel? teacher,
    required List<CourseResponseModel>course ,
    required bool isLoading 

  }) = Loaded;

  factory AdminTeacherState.initial() =>
      const AdminTeacherState.loaded(teacher: null,course: [],isLoading: true);
}
