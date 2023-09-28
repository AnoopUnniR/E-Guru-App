

import 'package:eguru_app/application/course_details/course_details_bloc.dart';
import 'package:eguru_app/application/search_page/search_page_bloc.dart';
import 'package:eguru_app/domain/core/debouncer/debouncer.dart';
import 'package:eguru_app/presentation/courses_page/widgets/course_tile.dart';
import 'package:eguru_app/presentation/main_page.dart/widgets/bottom_nav.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';



class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final debounce = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => indexChangeNotifier.value = 0,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: SizedBox(
          child: TextField(
            controller: searchController,
            decoration: const InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            onChanged: (value) {
              if (value.trim().isNotEmpty) {
                debounce.run(
                  () {
                    BlocProvider.of<SearchPageBloc>(context).add(
                      SearchPageEvent.searchInitiated(
                        value: searchController.text.trim(),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<SearchPageBloc>(context).add(
                SearchPageEvent.searchInitiated(
                  value: searchController.text.trim(),
                ),
              );
            },
            icon: const Icon(Icons.search),
            color: Colors.white,
            iconSize: 40,
          )
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<SearchPageBloc, SearchPageState>(
          builder: (context, state) {
            if (state.courses.isEmpty) {
              return const Center(
                child: Text("No Courses Found"),
              );
            }
            return width<10? ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.courses.length,
              itemBuilder: (context, index) {
                CourseModel course = state.courses[index];
                return onClickCard(context, course, width);
              },
            ): GridView.builder(
                itemCount: state.courses.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: (width * 100) / 500),
                itemBuilder: (context, index) {
                  CourseModel course = state.courses[index];
                  return onClickCard(context, course, width);
                });
          },
        ),
      ),
    );
  }

  InkWell onClickCard(BuildContext context, CourseModel course, double width) {
    return InkWell(
                onTap: () {
                  BlocProvider.of<CourseDetailsBloc>(context)
                      .add(ChapterLoading(courseId: course.courseId));
                  Navigator.pushNamed(context, courseDetailsPageRoute,
                      arguments: course);
                },
                child: CourseCard(width: width, course: course),
              );
  }
}
