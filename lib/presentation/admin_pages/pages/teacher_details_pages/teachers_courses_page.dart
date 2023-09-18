import 'package:eguru_app/application/admin_page_bloc/admin_chapters_list/admin_chapters_list_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_teachers_courses/admin_teacher_courses_list_bloc.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/presentation/admin_pages/pages/constants/admin_appbar.dart';
import 'package:eguru_app/presentation/admin_pages/pages/teacher_details_pages/teacher_chapter_page.dart';
import 'package:eguru_app/presentation/admin_pages/pages/teacher_details_pages/widgets/course_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminTeachersCoursesPage extends StatelessWidget {
  const AdminTeachersCoursesPage({super.key, required this.teacher});
  final UserTeacherModel teacher;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: adminAppbar(title: "Courses"),
      body: SafeArea(
          child: BlocConsumer<AdminTeacherCoursesListBloc,
              AdminTeacherCoursesListState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.courses.length,
            itemBuilder: (context, index) {
              CourseResponseModel course = state.courses[index];
              return Stack(
                children: [
                  InkWell(
                    onTap: () {
                      BlocProvider.of<AdminChaptersListBloc>(context).add(
                          AdminChaptersListEvent.started(courseId: course.id));
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AdminTeacherChaptersPage(courseId: course.id),
                          ));
                    },
                    child: AdminCourseCard(
                      course: course,
                      teacher: teacher,
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
                                  BlocProvider.of<AdminTeacherCoursesListBloc>(
                                          context)
                                      .add(AdminTeacherCoursesListEvent.delete(
                                          courseId: course.id,
                                          teacherId: teacher.id));
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
