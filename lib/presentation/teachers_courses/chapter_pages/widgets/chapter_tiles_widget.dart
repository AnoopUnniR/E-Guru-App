
import 'package:eguru_app/application/admin_page_bloc/admin_chapters_list/admin_chapters_list_bloc.dart';
import 'package:eguru_app/application/teacher_chapter/teacher_course_chaper_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_catagory/chapter_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChapterTilesWidget extends StatelessWidget {
  const ChapterTilesWidget({
    super.key,
    required this.width,
    required this.chapter,
    required this.courseId,
    this.isAdmin = false,
  });

  final double width;
  final ChapterResponseModel chapter;
  final int courseId;
  final bool isAdmin;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 5,
      child: Container(
        constraints: const BoxConstraints(maxHeight: 100),
        padding: const EdgeInsets.all(8),
        width: width * 20,
        height: width * 20,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 30, 27, 239).withOpacity(0.3),
          backgroundBlendMode: BlendMode.colorBurn,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: width * 10,
              height: width * 10,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://purepng.com/public/uploads/large/purepng.com-video-icon-galaxy-s6symbolsiconssamsungapp-iconsgalaxy-s6-icons-721522597480axbjz.png"),
                    fit: BoxFit.cover),
              ),
            ),
            sbw20,
            Text(
              chapter.title,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.blue,
                    content: Text(
                        "Do you want to delete the chapter \"${chapter.title}\""),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          if (isAdmin) {
                            BlocProvider.of<AdminChaptersListBloc>(context).add(
                              Deleted(
                                  chapterId: chapter.id, courseId: courseId),
                            );
                            Navigator.pop(context);
                            return;
                          }
                          BlocProvider.of<TeacherCourseChaperBloc>(context).add(
                            Delete(chapterId: chapter.id, courseId: courseId),
                          );
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
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
