import 'package:eguru_app/application/add_new_course/add_new_course_bloc.dart';
import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/teacher_course/teacher_course_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TeacherCoursesEditDeletButton extends StatelessWidget {
  const TeacherCoursesEditDeletButton({
    super.key,
    required this.course,
    required this.isVisible,
  });

  final CourseResponseModel course;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isVisible ? 1 : 0,
      curve: Curves.decelerate,
      duration: const Duration(seconds: 2),
      child: Container(
        height: 50,
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                style: elevatedButtonStyleColor,
                onPressed: () {
                  Navigator.pushNamed(context, addNewCoursePageRoute,
                      arguments: course);
                },
                child: const Text("Edit")),
            ElevatedButton(
                style: elevatedButtonStyleColor,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        BlocConsumer<AddNewCourseBloc, AddNewCourseState>(
                      listener: (context, state) {
                        if (state.isDeleted) {
                          showCustomSnackbar(
                              message: "Deleted Successfully",
                              context: context);
                        }
                        BlocProvider.of<TeacherCourseBloc>(context).add(
                            TeacherCourseEvent.teacherCoursesLoaded(
                                id: savedUserId));
                        Navigator.of(context).pop();
                      },
                      builder: (context, state) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          title:const Text("Delete?",style: TextStyle(color: Colors.black),),
                          content: Stack(
                            children: [
                              Text(
                                "Do you want to delete the course \"${course.title}\" and its chapters?",
                                style: const TextStyle(color: Colors.black),
                              ),
                              Visibility(
                                  visible: state.isLoading,
                                  child: const CircularProgressIndicator())
                            ],
                          ),
                          actions: [
                            ElevatedButton(
                                style: elevatedButtonStyleColor,
                                onPressed: () {
                                  BlocProvider.of<AddNewCourseBloc>(context)
                                      .add(AddNewCourseEvent.courseDeleted(
                                          course.id));
                                },
                                child: const Text("Yes")),
                            ElevatedButton(
                                style: elevatedButtonStyleColor,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("No")),
                          ],
                        );
                      },
                    ),
                  );
                },
                child: const Text("Delete"))
          ],
        ),
      ),
    );
  }
}
