part of 'add_new_chapter_bloc.dart';

@freezed
class AddNewChapterEvent with _$AddNewChapterEvent {
  const factory AddNewChapterEvent.started(
       {required CreateChapterModel? createChapterModel}
  ) = _Started;
}