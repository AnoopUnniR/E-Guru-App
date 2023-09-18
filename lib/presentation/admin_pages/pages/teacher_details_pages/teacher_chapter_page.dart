import 'package:eguru_app/application/admin_page_bloc/admin_chapters_list/admin_chapters_list_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_catagory/chapter_response_model.dart';
import 'package:eguru_app/presentation/admin_pages/pages/constants/admin_appbar.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:eguru_app/presentation/teachers_courses/chapter_pages/widgets/chapter_tiles_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminTeacherChaptersPage extends StatelessWidget {
  const AdminTeacherChaptersPage({super.key, required this.courseId});
  final int courseId;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    double height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      appBar: adminAppbar(title: "Courses"),
      body: SafeArea(
        child: BlocConsumer<AdminChaptersListBloc, AdminChaptersListState>(
          listener: (context, state) {
            if (state.isDeleted) {
              showCustomSnackbar(
                  message: "Chapter deleted successfully", context: context);
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  height: height * 80,
                  child: ListView.builder(
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
                            isAdmin: true,
                            width: width,
                            chapter: chapter,
                            courseId: courseId),
                      );
                    },
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(16),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
