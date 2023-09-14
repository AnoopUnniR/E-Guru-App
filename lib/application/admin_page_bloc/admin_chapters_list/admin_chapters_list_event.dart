part of 'admin_chapters_list_bloc.dart';

@freezed
class AdminChaptersListEvent with _$AdminChaptersListEvent {
  const factory AdminChaptersListEvent.started({
   required int  courseId,
  }) = _Started;
  const factory AdminChaptersListEvent.deleted({
   required int chapterId,
   required int courseId
  }) = Deleted;
}