import 'package:dio/dio.dart';
import 'package:eguru_app/domain/models/course_catagory/chapter_response_model.dart';
import 'package:eguru_app/infrastructure/course_teacher/get_course_chapter.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_chapters_list_event.dart';
part 'admin_chapters_list_state.dart';
part 'admin_chapters_list_bloc.freezed.dart';

class AdminChaptersListBloc
    extends Bloc<AdminChaptersListEvent, AdminChaptersListState> {
  ChapterRepository chapterRepository = ChapterRepository();

  AdminChaptersListBloc() : super(AdminChaptersListState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(isLoading: true,isDeleted: false));
      Response response = await chapterRepository.getChapters(event.courseId);
      if (response.statusCode == 200) {
        List<ChapterResponseModel> chapterModel = [];
        for (var value in response.data) {
          chapterModel.add(ChapterResponseModel.fromJson(value));
        }
        return emit(state.copyWith(isLoading: false, chapters: chapterModel));
      }
    });
    on<Deleted>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response response =
          await chapterRepository.deleteChapters(event.chapterId);
      if (response.statusCode == 202) {
        emit(state.copyWith(isDeleted: true));
        add(AdminChaptersListEvent.started(courseId: event.courseId));
      }
    });
  }
}
