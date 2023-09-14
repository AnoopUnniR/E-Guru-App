import 'package:eguru_app/domain/models/course_model/course_model.dart';
import 'package:eguru_app/infrastructure/favorites_repo/favorites_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourites_event.dart';
part 'favourites_state.dart';
part 'favourites_bloc.freezed.dart';

class FavouritesBloc extends Bloc<FavouritesEvent, FavouritesState> {
  FavouritesBloc() : super(FavouritesState.initial()) {
    FavoritesRepository favoritesRepository = FavoritesRepository();
    on<FavoritesStarted>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, isFavorite: false, isFavRemoved: false));
      final response = await favoritesRepository.getAllFavorites();
      final states =
          response.fold((left) => state.copyWith(isError: true), (right) {
        if (right.statusCode == 200) {
          List<CourseModel> courses = [];
          for (var element in right.data) {
            courses.add(CourseModel.fromJson(element));
          }
          List<int> favorites = courses.map((e) => e.courseId).toList();
          return state.copyWith(
              courses: courses, isLoading: false, favoritesId: favorites);
        }
        return state.copyWith(isError: true);
      });
      emit(states);
    });
    on<AddNewFavorites>((event, emit) async {
      Response response =
          await favoritesRepository.addToFavorites(event.courseId);
      if (response.statusCode == 200) {
        emit(state.copyWith(isFavorite: true));
        return add(const FavoritesStarted());
        // return emit(state.copyWith(isFavorite: false));
      }
    });
    on<RemoveFavorites>((event, emit) async {
      Response response =
          await favoritesRepository.removeFavorites(event.courseId);
      if (response.statusCode == 200) {
        emit(state.copyWith(isFavRemoved: true));

        add(const FavoritesStarted());
        // return emit(state.copyWith(isFavRemoved: false));
      }
    });
  }
}
