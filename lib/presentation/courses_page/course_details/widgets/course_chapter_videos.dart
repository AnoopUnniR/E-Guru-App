import 'package:eguru_app/application/teacher_chapter/teacher_course_chaper_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_catagory/chapter_response_model.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';


class ChapterVideoTiles extends StatelessWidget {
  const ChapterVideoTiles({
    super.key,
    required this.course,
  });

  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 3, 36, 62).withOpacity(0.7),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: null,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
          width: double.infinity,
          child: BlocBuilder<TeacherCourseChaperBloc, TeacherCourseChaperState>(
            builder: (context, state) {
              if (state.isLoading) {
                BlocProvider.of<TeacherCourseChaperBloc>(context)
                    .add(TeacherCourseChaperEvent.started(course.courseId));
              }
              if (state.chapters.isEmpty) {
                return const Center(child:  CircularProgressIndicator());
              }
              return ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: state.chapters.length,
                itemBuilder: (context, index) {
                  ChapterResponseModel chapter = state.chapters[index];
                  return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, videoPlayerPageRoute,
                            arguments: chapter);
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 43, 49, 151),
                          // backgroundBlendMode: BlendMode.lighten
                        ),
                        child: Row(
                          children: [
                            sbw10,
                            const Icon(Icons.video_library_rounded),
                            sbw10,
                            Text(chapter.title)
                          ],
                        ),
                      ));
                },
                separatorBuilder: (context, index) => sbh10,
              );
            },
          ),
        ),
      ),
    );
  }
}
