import 'package:eguru_app/application/favorites/favourites_bloc.dart';
import 'package:eguru_app/presentation/courses_page/widgets/course_tile.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return SafeArea(child: BlocBuilder<FavouritesBloc, FavouritesState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.courses.isEmpty) {
          return const Center(
            child: Text("No favorites added"),
          );
        }
        return width < 10
            ? ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: state.courses.length,
                itemBuilder: (context, index) {
                  CourseModel course = state.courses[index];
                  return cardButton(context, course, width);
                })
            : GridView.builder(
                itemCount: state.courses.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: (width * 100) / 500),
                itemBuilder: (context, index) {
                  CourseModel course = state.courses[index];
                  return cardButton(context, course, width);
                });
      },
    ));
  }

  InkWell cardButton(BuildContext context, CourseModel course, double width) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, courseDetailsPageRoute,
          arguments: course),
      child: CourseCard(width: width, course: course),
    );
  }
}
