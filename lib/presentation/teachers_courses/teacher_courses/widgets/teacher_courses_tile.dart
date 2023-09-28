import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/presentation/teachers_courses/teacher_courses/widgets/more_button_content.dart';
import 'package:eguru_app/presentation/teachers_courses/teacher_courses/widgets/teacher_course_content.dart';
import 'package:flutter/material.dart';

class TeachersCoursesTile extends StatelessWidget {
  TeachersCoursesTile({
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
  final ValueNotifier<bool> isVisible = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: width > 10
          ? 
           [
              TeacherCourseCardContent(
                  width: width,
                  imageUrl: imageUrl,
                  course: course,
                  teacherModel: teacherModel),
              moreButton(),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: ButtonsInnMore(isVisible: isVisible, course: course),
              )
            ]:
            [
              Column(
                children: [
                  TeacherCourseCardContent(
                      width: width,
                      imageUrl: imageUrl,
                      course: course,
                      teacherModel: teacherModel),
                  ButtonsInnMore(isVisible: isVisible, course: course)
                ],
              ),
              moreButton()
            ]
    );
  }
  Align moreButton() {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        onPressed: () {
          isVisible.value = !isVisible.value;
        },
        icon: const Icon(Icons.more_vert),
        color: Colors.white,
      ),
    );
  }
}
