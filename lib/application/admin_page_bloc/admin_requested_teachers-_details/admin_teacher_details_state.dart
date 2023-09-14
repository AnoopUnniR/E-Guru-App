part of 'admin_teacher_details_bloc.dart';

@freezed
class AdminTeacherDetailsState with _$AdminTeacherDetailsState {
  
  const factory AdminTeacherDetailsState.loaded({
  required UserTeacherModel? teacher,
  required bool isVerified,
  required bool isRejected,
  required bool isError,
required bool isVerifyLoading,
required bool isRejectLoading,
  }) = Loaded;
  factory AdminTeacherDetailsState.initial() =>const AdminTeacherDetailsState.loaded(
    isRejected: false,isVerified: false,teacher: null,isError:false,isRejectLoading: false,
    isVerifyLoading: false
  );
}
