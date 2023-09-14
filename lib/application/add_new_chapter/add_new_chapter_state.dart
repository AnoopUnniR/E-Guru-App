part of 'add_new_chapter_bloc.dart';

@freezed
class AddNewChapterState with _$AddNewChapterState {
  const factory AddNewChapterState.started(
      {required bool isLoading,
      required bool isError,
      required bool isLoaded}) = Started;
  factory AddNewChapterState.initial() => const AddNewChapterState.started(
      isLoading: false, isError: false, isLoaded: false);
}
