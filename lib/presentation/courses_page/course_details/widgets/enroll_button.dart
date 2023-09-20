import 'package:eguru_app/application/course_details/course_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';

class EnrollButtonWidget extends StatelessWidget {
  const EnrollButtonWidget(
      {super.key,
      required this.width,
      required this.course,
      required,
      required this.state});

  final double width;
  final CourseModel course;
  final CourseDetailsState state;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: state.isEnrolled ? width * 55 : width * 70,
      child: ElevatedButton(
        onPressed: () async {
          if (!state.isEnrolled) {
            BlocProvider.of<CourseDetailsBloc>(context)
                .add(EnrollCourse(courseId: course.courseId));
          } else {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Colors.blue[400],
                title: const Text("Unenroll?"),
                content:
                    const Text("Do you wish to unenroll from this course?"),
                actions: [
                  ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 233, 9, 210),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        BlocProvider.of<CourseDetailsBloc>(context)
                            .add(UnEnrollCourse(courseId: course.courseId));
                      },
                      child: const Text("Confirm")),
                  ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 233, 9, 210),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel"))
                ],
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 233, 9, 210),
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        child: state.isLoading
            ? const CircularProgressIndicator()
            : state.isEnrolled
                ? const Text("Unenroll", style: TextStyle(color: Colors.white))
                : const Text("Enroll", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
