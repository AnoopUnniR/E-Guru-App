part of 'admin_chapters_list_bloc.dart';

@freezed
class AdminChaptersListState with _$AdminChaptersListState {
  factory AdminChaptersListState.started(
      {required List<ChapterResponseModel> chapters,
      required bool isLoading,
     required bool isDeleted}) = Started;
   factory AdminChaptersListState.initial() => AdminChaptersListState.started(chapters : [],isLoading: false,isDeleted: false);
   
}
