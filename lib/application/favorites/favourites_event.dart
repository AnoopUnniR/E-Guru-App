part of 'favourites_bloc.dart';

@freezed
class FavouritesEvent with _$FavouritesEvent {
  const factory FavouritesEvent.favoritesStarted() = FavoritesStarted;
  const factory FavouritesEvent.addNewFavorites(int courseId) = AddNewFavorites;
  const factory FavouritesEvent.removeFavorites(int courseId) = RemoveFavorites;
}
