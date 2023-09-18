import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';

class AdminCourseCard extends StatelessWidget {
  const AdminCourseCard({
    super.key,
    required this.course,
    required this.teacher,
  });
  final CourseResponseModel course;
  final UserTeacherModel teacher;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return Stack(
      children: [
        Card(
          color: Colors.transparent,
          elevation: 5,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 30, 27, 239).withOpacity(0.3),
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
                        width: width * 30,
                        height: width * 30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  NetworkImage(imageUrlConvert(course.image)),
                              fit: BoxFit.cover),
                        ),
                      ),
                      sbw20,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sbh20,
                          SizedBox(
                            width: width * 50,
                            child: TextScroll(
                              delayBefore: const Duration(seconds: 3),
                              pauseBetween: const Duration(seconds: 3),
                              course.title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          sbh10,
                          Text(
                            "Level : ${course.level}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          sbh10,
                          Text(
                            course.duration,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          sbh10,
                          Text(
                            "Enrolments : ${course.enrollments.toString()}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          sbh10,
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 80,
                        child: Text(
                          "Description:\n       ${course.desc}",
                          style: const TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
