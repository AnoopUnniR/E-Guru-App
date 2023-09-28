import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';

class TeacherCourseCardContent extends StatelessWidget {
  const TeacherCourseCardContent({
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

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 5,
      child: Container(
        constraints: const BoxConstraints(maxHeight: 230),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 30, 27, 239).withOpacity(0.3),
          backgroundBlendMode: BlendMode.colorBurn,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  constraints:
                      const BoxConstraints(maxHeight: 150, maxWidth: 200),
                  width: width * 30,
                  height: width * 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageUrlConvert(imageUrl)),
                        fit: BoxFit.cover),
                  ),
                ),
                sbw20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sbh10,
                    SizedBox(
                      width: width < 10 ? width * 40 : width * 25,
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
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Description:\n       ${course.desc}",
                    style: const TextStyle(
                        color: Colors.white, overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
