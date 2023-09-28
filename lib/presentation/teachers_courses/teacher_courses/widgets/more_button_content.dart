import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/presentation/teachers_courses/teacher_courses/widgets/teacher_course_edit_buttons.dart';
import 'package:flutter/material.dart';
class ButtonsInnMore extends StatelessWidget {
  const ButtonsInnMore({
    super.key,
    required this.isVisible,
    required this.course,
  });

  final ValueNotifier<bool> isVisible;
  final CourseResponseModel course;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isVisible,
      builder: (context, isVisible, _) => Visibility(
        visible: isVisible,
        maintainState: true,
        maintainAnimation: true,
        child: TeacherCoursesEditDeletButton(
          course: course,
          isVisible: isVisible,
        ),
      ),
    );
  }
}
