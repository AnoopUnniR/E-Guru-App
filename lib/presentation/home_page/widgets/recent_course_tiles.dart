import 'package:eguru_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';
import 'package:text_scroll/text_scroll.dart';

class RecentCourseTiles extends StatelessWidget {
  const RecentCourseTiles({
    super.key,
    required this.width,
    required this.model,
  });

  final double width;
  final CourseModel model;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 10,
      child: Container(
        constraints: const BoxConstraints(maxHeight: 200, maxWidth: 200),
        padding: const EdgeInsets.all(8),
        width: width * 50,
        height: width * 50,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 41, 45, 255),
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sbh10,
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      imageUrlConvert(model.image),
                    ),
                  ),
                ),
              ),
              sbh10,
              TextScroll(
                delayBefore: const Duration(seconds: 5),
                pauseBetween: const Duration(seconds: 5),
                model.title,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
              Text(
                model.teacherName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  const Text("Rating : "),
                  Text(
                    model.averageRating ?? "0",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
