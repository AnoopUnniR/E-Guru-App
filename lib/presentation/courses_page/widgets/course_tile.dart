
import 'package:eguru_app/application/favorites/favourites_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/courses_page/widgets/favorites_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';


class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.width,
    required this.course,
  });

  final double width;
  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 5,
      child: Stack(
        children: [
          Container(
            constraints: const BoxConstraints(maxHeight: 240),
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
                        constraints:
                            const BoxConstraints(maxHeight: 150, maxWidth: 200),
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
                          Text(
                            course.title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                overflow: TextOverflow.ellipsis),
                          ),
                          sbh10,
                          Text(
                            course.teacherName,
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
                            course.averageRating ?? "null",
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
                      Expanded(
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
          Align(
            alignment: Alignment.topRight,
            child: BlocListener<FavouritesBloc, FavouritesState>(
              listener: (context, state) {},
              child: FavoritesButton(course: course.courseId),
            ),
          ),
        ],
      ),
    );
  }
}
