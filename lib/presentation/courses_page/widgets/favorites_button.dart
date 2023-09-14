
import 'package:eguru_app/application/favorites/favourites_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class FavoritesButton extends StatelessWidget {
  const FavoritesButton({
    super.key,
    required this.course,
  });

  final int course;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        return state.favoritesId.contains(course)
            ? IconButton(
                onPressed: () {
                  BlocProvider.of<FavouritesBloc>(context)
                      .add(RemoveFavorites(course));
                },
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ))
            : IconButton(
                onPressed: () {
                  BlocProvider.of<FavouritesBloc>(context)
                      .add(AddNewFavorites(course));
                },
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ));
      },
    );
  }
}

int i = 0;
void favouritesSnackbar(BuildContext context,
    [bool isFavorite = false, bool isFavRemoved = false]) {
  if (isFavorite) {
    showCustomSnackbar(message: " Added to Favorites", context: context);
    BlocProvider.of<FavouritesBloc>(context).add(const FavoritesStarted());
  }
  if (isFavRemoved) {
    showCustomSnackbar(message: " Removed from Favorites", context: context);
    BlocProvider.of<FavouritesBloc>(context).add(const FavoritesStarted());
  }
}
