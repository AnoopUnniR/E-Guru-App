part of 'teacher_course_chaper_bloc.dart';

@freezed
class TeacherCourseChaperState with _$TeacherCourseChaperState {
  const factory TeacherCourseChaperState.loading({
    required bool isLoading,
    required bool isLoaded,
    required List<ChapterResponseModel> chapters,
    required bool isError,
    required bool isDeleted
  }) = Loading;

  factory TeacherCourseChaperState.initial() =>const TeacherCourseChaperState.loading(
      isLoading: true, isLoaded: false, chapters: [],isError: false,isDeleted:false);
}
