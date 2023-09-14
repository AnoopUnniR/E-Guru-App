import 'package:dio/dio.dart';
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';
import 'package:eguru_app/infrastructure/course_category/category_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_course_category_event.dart';
part 'admin_course_category_state.dart';
part 'admin_course_category_bloc.freezed.dart';

class AdminCourseCategoryBloc
    extends Bloc<AdminCourseCategoryEvent, AdminCourseCategoryState> {
  CategoryRepository categoryRepository = CategoryRepository();
  AdminCourseCategoryBloc() : super(AdminCourseCategoryState.initial()) {
    on<_Started>((event, emit) {
      emit(state.copyWith(catagoryList: event.catagoryList));
    });
    on<Delete>((event, emit) async {
      final response =
          await categoryRepository.deleteCourseCatagory(event.catagoryId);
      response.fold((left) {
        emit(state.copyWith(isError: true));
        return;
      }, (right) {
        emit(state.copyWith(isDelete: true));
        add(const Reload());
      });
    });
    on<Reload>((event, emit) async {
      emit(state.copyWith(isLoading: true, isDelete: false,isCreated:false));
      final response = await categoryRepository.allCatagory();
      final states = response.fold(
        (left) => state.copyWith(isError: true),
        (right) => state.copyWith(catagoryList: right, isLoading: false),
      );
      emit(states);
    });
    on<Create>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response response =
          await categoryRepository.addCatagory(event.catagoryName);
      if (response.statusCode == 201) {
        emit(state.copyWith(isCreated:true));
        add(const Reload());
      }
    });
  }
}
