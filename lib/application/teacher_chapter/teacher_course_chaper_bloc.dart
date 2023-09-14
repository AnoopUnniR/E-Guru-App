import 'package:dio/dio.dart';
import 'package:eguru_app/domain/models/course_catagory/chapter_response_model.dart';
import 'package:eguru_app/infrastructure/course_teacher/get_course_chapter.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'teacher_course_chaper_event.dart';
part 'teacher_course_chaper_state.dart';
part 'teacher_course_chaper_bloc.freezed.dart';

class TeacherCourseChaperBloc
    extends Bloc<TeacherCourseChaperEvent, TeacherCourseChaperState> {
  ChapterRepository chapterRepository = ChapterRepository();
  TeacherCourseChaperBloc() : super(TeacherCourseChaperState.initial()) {
    on<Started>((event, emit) async {
      emit(state.copyWith(isLoading: true, isLoaded: false,isDeleted: false));
      Response response = await chapterRepository.getChapters(event.courseId);
      if (response.statusCode == 200) {
        List<ChapterResponseModel> chapterModel = [];
        for (var value in response.data) {
          chapterModel.add(ChapterResponseModel.fromJson(value));
        }
        return emit(state.copyWith(isLoading: false, chapters: chapterModel));
      }
    });
    on<Delete>((event, emit) async {
      Response response =
          await chapterRepository.deleteChapters(event.chapterId);
      if (response.statusCode == 202) {
        emit(state.copyWith(isDeleted: true));
        add(Started(event.courseId));
      }
    });
  }
}
