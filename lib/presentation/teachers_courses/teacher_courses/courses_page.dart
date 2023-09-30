import 'package:eguru_app/application/teacher_chapter/teacher_course_chaper_bloc.dart';
import 'package:eguru_app/application/teacher_course/teacher_course_bloc.dart';
import 'package:eguru_app/constants/create_button.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:eguru_app/presentation/teachers_courses/teacher_courses/widgets/teacher_courses_tile.dart';
import 'package:eguru_app/constants/page_background_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/api_endpoints.dart';

class AddedCoursesPage extends StatelessWidget {
  const AddedCoursesPage({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;
    UserTeacherModel teacherModel =
        ModalRoute.of(context)?.settings.arguments as UserTeacherModel;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Courses",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<TeacherCourseBloc, TeacherCourseState>(
            builder: (context, state) {
              if (state.isLoading) {
                BlocProvider.of<TeacherCourseBloc>(context).add(
                    TeacherCourseEvent.teacherCoursesLoaded(
                        id: teacherModel.id));
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              
              return Column(
                children: [
                  SizedBox(
                    height: height * 80,
                    child: state.course.isEmpty
                        ? const Center(
                            child: Text(
                              "No Courses Added",
                            ),
                          )
                        : width > 10
                            ? 
                             GridView.builder(
                                itemCount: state.course.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: (width * 100) / 520,
                                        crossAxisCount: 2),
                                itemBuilder: (context, index) {
                                  CourseResponseModel course =
                                      state.course[index];
                                  String imageUrl =
                                      "$baseUrl${course.image.split('8000/').last}";
                                  return cocurseTileFunctions(context, course,
                                      width, imageUrl, teacherModel);
                                },
                              ):ListView.builder(
                                itemCount: state.course.length,
                                itemBuilder: (context, index) {
                                  CourseResponseModel course =
                                      state.course[index];
                                  String imageUrl =
                                      "$baseUrl${course.image.split('8000/').last}";
                                  return cocurseTileFunctions(context, course,
                                      width, imageUrl, teacherModel);
                                },
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(16),
                              )
                  ),
                  CreateButtonWidget(
                      function: () {
                        Navigator.pushNamed(context, catagoryPageRoute,
                            arguments: teacherModel.id);
                      },
                      title: 'Add New Course'),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  InkWell cocurseTileFunctions(BuildContext context, CourseResponseModel course,
      double width, String imageUrl, UserTeacherModel teacherModel) {
    return InkWell(
      onTap: () {
        BlocProvider.of<TeacherCourseChaperBloc>(context).add(
          TeacherCourseChaperEvent.started(
            course.id,
          ),
        );
        Navigator.pushNamed(context, teacherChaptersPageRoute,
            arguments: course.id);
      },
      child: TeachersCoursesTile(
        width: width,
        imageUrl: imageUrl,
        course: course,
        teacherModel: teacherModel,
      ),
    );
  }
}
