import 'package:eguru_app/application/admin_page_bloc/admin_chapters_list/admin_chapters_list_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_courses/admin_courses_bloc.dart';
import 'package:eguru_app/presentation/admin_pages/pages/courses_list/admin_course_tiles.dart';
import 'package:eguru_app/presentation/admin_pages/pages/teacher_details_pages/teacher_chapter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';

class AdminCoursesPage extends StatelessWidget {
  const AdminCoursesPage({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: BlocConsumer<AdminCoursesBloc,
              AdminCoursesState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.courses.length,
            itemBuilder: (context, index) {
              CourseModel course = state.courses[index];
              return Stack(
                children: [
                  InkWell(
                    onTap: () {
                      BlocProvider.of<AdminChaptersListBloc>(context).add(
                          AdminChaptersListEvent.started(courseId: course.courseId),
                        );
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AdminTeacherChaptersPage(courseId: course.courseId),
                          ),
                        );
                    },
                    child:AdminCourseDetailsWidget(
                    course: course,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: Colors.blue,
                            content: const Text(
                                "Do you want to delete the chapter "),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<AdminCoursesBloc>(
                                          context)
                                      .add(AdminCoursesEvent.deleted(
                                          coursesID: course.courseId,
                                      ));
                                  Navigator.pop(context);
                                },
                                child: const Text("Delete"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Cancel"),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: const Icon(Icons.delete),
                    ),
                  )
                ],
              );
            },
          );
        },
      )),
    );
  }
}
