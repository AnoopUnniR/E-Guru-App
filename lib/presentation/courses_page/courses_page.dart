import 'package:eguru_app/application/course_details/course_details_bloc.dart';
import 'package:eguru_app/application/course_page/course_page_bloc.dart';
import 'package:eguru_app/application/favorites/favourites_bloc.dart';
import 'package:eguru_app/presentation/courses_page/widgets/course_choice.dart';
import 'package:eguru_app/presentation/courses_page/widgets/course_tile.dart';
import 'package:eguru_app/presentation/courses_page/widgets/favorites_button.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return SafeArea(
      child: BlocBuilder<CoursePageBloc, CoursePageState>(
        builder: (context, state) {
          return BlocListener<FavouritesBloc, FavouritesState>(
            listener: (context, state) {
              if (state.isFavorite || state.isFavRemoved) {
                favouritesSnackbar(
                    context, state.isFavorite, state.isFavRemoved);
              }
            },
            child: Column(
              children: [
                 CourseSortChoiceChipWidget(),
                Expanded(
                  child: (state.courses.isEmpty)
                      ? const Center(
                          child: Text("No courses Found"),
                        )
                      :
                      GridView.builder(
                          itemCount: state.courses.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: width > 10
                                      ? (width * 100) / 480
                                      : ((width * 100) / 240),
                                  crossAxisCount: width > 10 ? 2 : 1),
                          itemBuilder: (context, index) {
                            CourseModel course = state.courses[index];
                            return
                                InkWell(
                              onTap: () {
                                BlocProvider.of<CourseDetailsBloc>(context).add(
                                  ChapterLoading(courseId: course.courseId),
                                );
                                Navigator.pushNamed(
                                    context, courseDetailsPageRoute,
                                    arguments: course);
                              },
                              child: CourseCard(width: width, course: course),
                            );
                          },
                        ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
