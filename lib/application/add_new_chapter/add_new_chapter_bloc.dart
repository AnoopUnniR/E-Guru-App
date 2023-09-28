import 'package:dio/dio.dart';
import 'package:eguru_app/domain/models/chapter_model.dart/add_new_chapter_model.dart';
import 'package:eguru_app/infrastructure/course_teacher/add_new_chapter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_new_chapter_event.dart';
part 'add_new_chapter_state.dart';
part 'add_new_chapter_bloc.freezed.dart';

class AddNewChapterBloc extends Bloc<AddNewChapterEvent, AddNewChapterState> {
  AddNewChapterRepository addNewChapterRepository = AddNewChapterRepository();
  AddNewChapterBloc() : super(AddNewChapterState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response response = await addNewChapterRepository
          .addNewChapter(event.createChapterModel!);
      if (response.statusCode == 201) {
        return emit(state.copyWith(isLoading: false,isLoaded: true));
      } else {
        return emit(state.copyWith(isError: true));
      }
    });
  }
}
