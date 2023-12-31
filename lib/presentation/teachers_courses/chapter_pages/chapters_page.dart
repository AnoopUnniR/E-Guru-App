import 'package:eguru_app/application/teacher_chapter/teacher_course_chaper_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/constants/create_button.dart';
import 'package:eguru_app/domain/models/chapter_model.dart/chapter_response_model.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:eguru_app/presentation/teachers_courses/chapter_pages/widgets/chapter_tiles_widget.dart';
import 'package:flutter/material.dart';
import 'package:eguru_app/constants/page_background_color.dart';
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
                    child:
                        GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: width > 10 ? 2 : 1,
                          childAspectRatio: width > 10
                              ? (width * 100) / 200
                              : (width * 100) / 100),
                      itemCount: state.chapters.length,
                      itemBuilder: (context, index) {
                        ChapterResponseModel chapter = state.chapters[index];
                        // String imageUrl =
                        //     "$baseUrl${course.image.split('8000/').last}";
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, videoPlayerPageRoute,
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
                  CreateButtonWidget(function:  () {
          Navigator.pushNamed(context, addNewChapterPageRoute,
              arguments: courseId);
        }, title: "Add New Chapter")
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
