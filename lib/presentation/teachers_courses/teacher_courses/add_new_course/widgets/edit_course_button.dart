import 'package:eguru_app/application/add_new_course/add_new_course_bloc.dart';
import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';
import 'package:eguru_app/domain/models/course_catagory/create_course_model.dart';

import 'package:image_picker/image_picker.dart';

class EditCourseButtonWidget extends StatelessWidget {
  const EditCourseButtonWidget({
    super.key,
    required this.imageValueNotifier,
    required this.titleController,
    required this.levelController,
    required this.descriptionController,
    required this.durationController,
    required this.courseModel,
    required this.categoryModel,
    required this.state,
  });

  final ValueNotifier<XFile?> imageValueNotifier;
  final TextEditingController titleController;
  final TextEditingController levelController;
  final TextEditingController descriptionController;
  final TextEditingController durationController;
  final CourseResponseModel? courseModel;
  final CategoryModel? categoryModel;
  final AddNewCourseState state;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (imageValueNotifier.value == null ||
            titleController.text.trim().isEmpty ||
            levelController.text.trim().isEmpty ||
            descriptionController.text.trim().isEmpty ||
            durationController.text.trim().isEmpty) {
          showCustomSnackbar(
              message: "Please Fill All The Fields", context: context);
        }
        if (courseModel != null) {
          if (titleController.text == courseModel!.title &&
              levelController.text == courseModel!.level &&
              descriptionController.text == courseModel!.desc &&
              durationController.text == courseModel!.duration) {
            showCustomSnackbar(
                message:
                    "No values has been changed. Please click cancel if you want to cancel editing",
                context: context);
          }
        }

        NewCourseModel newCourseModel = NewCourseModel(
            title: titleController.text,
            category: [categoryModel?.id ?? courseModel!.category.id],
            image: imageValueNotifier.value!,
            description: descriptionController.text,
            duration: durationController.text,
            level: levelController.text,
            teacher: savedUserId);
        BlocProvider.of<AddNewCourseBloc>(context).add(
            AddNewCourseEvent.courseEdited(newCourseModel, courseModel!.id));
        // isEdit = false;
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 233, 9, 210),
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
      child: state.isLoading
          ? const CircularProgressIndicator()
          : const Text('Save'),
    );
  }
}
