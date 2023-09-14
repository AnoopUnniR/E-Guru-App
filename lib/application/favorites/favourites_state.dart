part of 'favourites_bloc.dart';

@freezed
class FavouritesState with _$FavouritesState {
    const factory FavouritesState.started(
      {required List<CourseModel> courses, required bool isLoading,required bool isError,required bool isFavorite,required List<int> favoritesId,required bool isFavRemoved}) = Started;
  factory FavouritesState.initial() =>
      const FavouritesState.started(isLoading: false, courses: [],isError: false,isFavorite:false,favoritesId: [],isFavRemoved: false);
}
