import 'package:eguru_app/application/course_details/course_details_bloc.dart';
import 'package:eguru_app/application/course_page/course_page_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/presentation/home_page/widgets/recent_course_tiles.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.args});
  final dynamic args;
  final ValueNotifier<int> countNotifier = ValueNotifier(2);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width / 100;
    bool isTeacher = false;
    if (args is UserTeacherModel) {
      isTeacher = true;
    }
    return RefreshIndicator(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        constraints:
                            const BoxConstraints(maxWidth: 500, maxHeight: 300),
                        width: width * 85,
                        height: width * 50,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/home_banner.jpg"),
                          ),
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      sbh20,
                      SizedBox(
                        width: width * 78,
                        child: isTeacher
                            ? quoteText(
                                "Teaching is the art of assisting discovery.")
                            : quoteText("Learn Something New Everyday."),
                      ),
                    ],
                  ),
                ),
                sbh30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recent Course",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ValueListenableBuilder(
                      valueListenable: countNotifier,
                      builder: (context, value, child) =>
                          (countNotifier.value == 2)
                              ? TextButton(
                                  onPressed: () {
                                    countNotifier.value = 5;
                                  },
                                  child: const Text(
                                    "show more",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              : TextButton(
                                  onPressed: () {
                                    countNotifier.value = 2;
                                  },
                                  child: const Text("show less",
                                      style: TextStyle(color: Colors.white)),
                                ),
                    )
                  ],
                ),
                sbh20,
                SizedBox(
                  width: width * 100,
                  height: 250,
                  child: BlocBuilder<CoursePageBloc, CoursePageState>(
                    builder: (context, state) {
                      return state.courses.isEmpty
                          ? const Center(
                              child: Text("No courses to show"),
                            )
                          : ValueListenableBuilder(
                              valueListenable: countNotifier,
                              builder: (context, value, child) {
                                int length = value;
                                if (value == 5 && state.courses.length < 5) {
                                  length = state.courses.length;
                                }
                                return ListView.separated(
                                  itemCount: state.courses.length < 2
                                      ? state.courses.length
                                      : length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    CourseModel model = state.courses[index];
                                    return InkWell(
                                      onTap: () {
                                        BlocProvider.of<CourseDetailsBloc>(
                                                context)
                                            .add(
                                          ChapterLoading(
                                            courseId: model.courseId,
                                          ),
                                        );
                                        Navigator.pushNamed(
                                          context,
                                          courseDetailsPageRoute,
                                          arguments: model,
                                        );
                                      },
                                      child: RecentCourseTiles(
                                          width: width, model: model),
                                    );
                                  },
                                  separatorBuilder: (context, index) => sbh10,
                                );
                              },
                            );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      onRefresh: () {
        BlocProvider.of<CoursePageBloc>(context)
            .add(const CourseEventStarted());
        return Future(() => null);
      },
    );
  }

  Text quoteText(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Color.fromARGB(255, 201, 197, 197), fontSize: 30),
    );
  }
}
