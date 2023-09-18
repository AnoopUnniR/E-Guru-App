import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/course_catagory/course_catagory_bloc.dart';
import 'package:eguru_app/application/course_details/course_details_bloc.dart';
import 'package:eguru_app/application/course_page/course_page_bloc.dart';
import 'package:eguru_app/application/favorites/favourites_bloc.dart';
import 'package:eguru_app/presentation/courses_page/widgets/course_tile.dart';
import 'package:eguru_app/presentation/courses_page/widgets/favorites_button.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';
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
                const ChoiseChipCourses(),
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

class ChoiseChipCourses extends StatefulWidget {
  const ChoiseChipCourses({super.key});

  @override
  ChoiseChipCoursesState createState() => ChoiseChipCoursesState();
}

class ChoiseChipCoursesState extends State<ChoiseChipCourses> {
  List<String> chipItems = [
    'All Courses',
    'Enrolled',
    'Catagories',
    // 'Option 4'
  ];
  String? selectedChip;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height / 100;
    return SizedBox(
      height: 50,
      width: width,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: chipItems.map((String item) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Material(
              color: Colors.transparent,
              child: ChoiceChip(
                backgroundColor: Colors.blueAccent[700],
                selectedColor: Colors.blue,
                label: Text(
                  item,
                  style: const TextStyle(),
                ),
                selected: selectedChip == item,
                onSelected: (bool selected) {
                  setState(() {
                    selectedChip = selected ? item : chipItems[1];
                  });
                  if (selectedChip == 'All Courses') {
                    BlocProvider.of<CoursePageBloc>(context)
                        .add(const CoursePageEvent.courseEventStarted());
                    return;
                  }
                  if (selectedChip == 'Enrolled') {
                    BlocProvider.of<CoursePageBloc>(context).add(
                        CoursePageEvent.courseEventEnrolled(
                            userId: savedUserId));
                    return;
                  }
                  if (selectedChip == 'Catagories') {
                    showDialog(
                      context: context,
                      builder: (context) => CatagorySortWidget(height: height),
                    );
                  }
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class CatagorySortWidget extends StatelessWidget {
  const CatagorySortWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Center(child: Text("Catagories")),
      backgroundColor: Colors.blue,
      children: [
        SizedBox(
          height: height * 70, // Provide an appropriate height or use Expanded
          child: BlocBuilder<CourseCatagoryBloc, CourseCatagoryState>(
            builder: (context, state) {
              if (state.isLoading) {
                BlocProvider.of<CourseCatagoryBloc>(context)
                    .add(const CourseAdded());
                return const Center(child: CircularProgressIndicator());
              }
              return state.catagory.isEmpty
                  ? const Center(child: Text("No Categories Created Yet"))
                  : SingleChildScrollView(
                      // Wrap with SingleChildScrollView
                      child: Column(
                        children: List.generate(
                          state.catagory.length,
                          (index) {
                            final CategoryModel category =
                                state.catagory[index];
                            return ListTile(
                              onTap: () {
                                BlocProvider.of<CoursePageBloc>(context).add(
                                    CoursePageEvent.courseEventcatagory(
                                        catagoryId: category.id));
                                Navigator.pop(context);
                              },
                              title: Text(category.name),
                            );
                          },
                        ),
                      ),
                    );
            },
          ),
        )
      ],
    );
  }
}
