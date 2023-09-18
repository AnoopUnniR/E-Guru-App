import 'package:eguru_app/application/add_new_course/add_new_course_bloc.dart';
import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/teacher_course/teacher_course_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:text_scroll/text_scroll.dart';

class TeachersCoursesTile extends StatelessWidget {
  TeachersCoursesTile({
    super.key,
    required this.width,
    required this.imageUrl,
    required this.course,
    required this.teacherModel,
  });

  final double width;
  final String imageUrl;
  final CourseResponseModel course;
  final UserTeacherModel teacherModel;
  final ValueNotifier<bool> isVisible = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Card(
              color: Colors.transparent,
              elevation: 5,
              child: Container(
                constraints: const BoxConstraints(maxHeight: 240),
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                height: width * 50,
                decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 30, 27, 239).withOpacity(0.3),
                  backgroundBlendMode: BlendMode.colorBurn,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SizedBox(
                  // width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            constraints: const BoxConstraints(
                                maxWidth: 200, maxHeight: 150),
                            width: width * 30,
                            height: width * 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(imageUrl),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          sbw20,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              sbh10,
                              SizedBox(
                                width: width * 40,
                                child: TextScroll(
                                  delayBefore: const Duration(seconds: 3),
                                  pauseBetween: const Duration(seconds: 3),
                                  numberOfReps: 4,
                                  intervalSpaces: 10,
                                  pauseOnBounce: const Duration(seconds: 1),
                                  course.title,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                              sbh5,
                              Text(
                                teacherModel.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              sbh5,
                              Text(
                                course.duration,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              sbh5,
                              Text(
                                course.level,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              sbh5,
                              Text(
                                course.category.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              sbh5,
                            ],
                          ),
                        ],
                      ),
                      Text(
                        course.desc,
                        style: const TextStyle(
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  isVisible.value = !isVisible.value;
                },
                icon: const Icon(Icons.more_vert),
                color: Colors.white,
              ),
            )
          ],
        ),
        ValueListenableBuilder(
          valueListenable: isVisible,
          builder: (context, isVisible, _) => Visibility(
            visible: isVisible,
            maintainState: true,
            maintainAnimation: true,
            child: AnimatedOpacity(
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
                        onPressed: () {
                          Navigator.pushNamed(context, addNewCoursePageRoute,
                              arguments: course);
                        },
                        child: const Text("Edit")),
                    ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => BlocConsumer<AddNewCourseBloc,
                                AddNewCourseState>(
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
                                  backgroundColor: Colors.lightBlue,
                                  content: Stack(
                                    children: [
                                      Text(
                                          "Do you want to delete the course \"${course.title} and its chapters?"),
                                      Visibility(
                                          visible: state.isLoading,
                                          child:
                                              const CircularProgressIndicator())
                                    ],
                                  ),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          BlocProvider.of<AddNewCourseBloc>(
                                                  context)
                                              .add(AddNewCourseEvent
                                                  .courseDeleted(course.id));
                                        },
                                        child: const Text("Yes")),
                                    ElevatedButton(
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
            ),
          ),
        )
      ],
    );
  }
}
