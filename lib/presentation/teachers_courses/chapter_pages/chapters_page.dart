

import 'package:eguru_app/application/teacher_chapter/teacher_course_chaper_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_catagory/chapter_response_model.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:eguru_app/presentation/teachers_courses/chapter_pages/widgets/add_chapter_button.dart';
import 'package:eguru_app/presentation/teachers_courses/chapter_pages/widgets/chapter_tiles_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TeacherChaptersPage extends StatelessWidget {
  const TeacherChaptersPage({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;
    int courseId = ModalRoute.of(context)?.settings.arguments as int;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Chapters",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: SafeArea(
          child:
              BlocConsumer<TeacherCourseChaperBloc, TeacherCourseChaperState>(
            listener: (context, state) {
              if (state.isDeleted) {
                showCustomSnackbar(
                    message: "Chapter deleted successfully", context: context);
              }
            },
            builder: (context, state) {
              if (state.isLoading) {
                BlocProvider.of<TeacherCourseChaperBloc>(context)
                    .add(TeacherCourseChaperEvent.started(courseId));
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                children: [
                  SizedBox(
                    height: height * 80,
                    child: width < 10
                        ? ListView.builder(
                            itemCount: state.chapters.length,
                            itemBuilder: (context, index) {
                              ChapterResponseModel chapter =
                                  state.chapters[index];
                              // String imageUrl =
                              //     "$baseUrl${course.image.split('8000/').last}";
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, videoPlayerPageRoute,
                                      arguments: chapter);
                                },
                                child: ChapterTilesWidget(
                                    width: width,
                                    chapter: chapter,
                                    courseId: courseId),
                              );
                            },
                            shrinkWrap: true,
                            padding: const EdgeInsets.all(16),
                          )
                        : GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: (width * 100) / 200),
                            itemCount: state.chapters.length,
                            itemBuilder: (context, index) {
                              ChapterResponseModel chapter =
                                  state.chapters[index];
                              // String imageUrl =
                              //     "$baseUrl${course.image.split('8000/').last}";
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, videoPlayerPageRoute,
                                      arguments: chapter);
                                },
                                child: ChapterTilesWidget(
                                    width: width,
                                    chapter: chapter,
                                    courseId: courseId),
                              );
                            },
                          ),
                  ),
                  AddNewChapterButton(width: width, courseId: courseId)
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
