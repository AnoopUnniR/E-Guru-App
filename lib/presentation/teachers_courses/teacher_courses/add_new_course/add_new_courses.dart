import 'package:eguru_app/application/add_new_course/add_new_course_bloc.dart';
import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/teacher_course/teacher_course_bloc.dart';
import 'package:eguru_app/constants/cancel_button.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/infrastructure/image_picker/pick_image.dart';
import 'package:eguru_app/presentation/login_pages/widgets/textformfield.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:eguru_app/presentation/teachers_courses/teacher_courses/add_new_course/widgets/add_course_button.dart';
import 'package:eguru_app/presentation/teachers_courses/teacher_courses/add_new_course/widgets/course_image_widget.dart';
import 'package:eguru_app/presentation/teachers_courses/teacher_courses/add_new_course/widgets/edit_course_button.dart';
import 'package:eguru_app/presentation/teachers_courses/teacher_courses/add_new_course/widgets/levels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/constants/page_background_color.dart';
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';

import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class AddNewCoursesPage extends StatelessWidget {
  AddNewCoursesPage({super.key});
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController durationController = TextEditingController();
  final TextEditingController levelController = TextEditingController();
  CourseResponseModel? courseModel;
  CategoryModel? categoryModel;
  bool isEdit = false;
  ValueNotifier<XFile?> imageValueNotifier = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    final modelData = ModalRoute.of(context)?.settings.arguments;
    double width = MediaQuery.of(context).size.width / 100;
    if (modelData is CategoryModel) {
      categoryModel = modelData;
    }
    if (modelData is CourseResponseModel && !isEdit) {
      courseModel = modelData;
      titleController.text = courseModel!.title;
      descriptionController.text = courseModel!.desc;
      durationController.text = courseModel!.duration;
      levelController.text = courseModel!.level;
      isEdit = true;
    }
    void getLevelValue(String value) {
      levelController.text = value;
    }

    void handleTap(AddNewCourseBloc addNewCourseBloc) async {
      imageValueNotifier.value = await PickImage.pickImage();
      addNewCourseBloc.add(const AddNewCourseEvent.courseAdded(null));
    }

    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Add Courses",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    sbh10,
                    const Text(
                      "Add New Course",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    sbh10,
                    const Text('Please enter your course details'),
                    sbh20,
                    BlocBuilder<AddNewCourseBloc, AddNewCourseState>(
                      builder: (context, state) {
                        return InkWell(
                          onTap: () {
                            handleTap(
                                BlocProvider.of<AddNewCourseBloc>(context));
                          },
                          child: CourseImageWidget(
                              imageValueNotifier: imageValueNotifier),
                        );
                      },
                    ),
                    sbh20,
                    InputField(
                      label: "Title",
                      controller: titleController,
                      keyboardType: TextInputType.name,
                    ),
                    sbh20,
                    // const AddCategoryWidget(),
                    LevelsWidget(
                      callback: getLevelValue,
                    ),
                    sbh20,
                    InputField(
                      label: "Description",
                      controller: descriptionController,
                      keyboardType: TextInputType.name,
                      maxLines: null,
                    ),
                    sbh20,
                    InputField(
                      label: "Duration",
                      controller: durationController,
                      keyboardType: TextInputType.datetime,
                    ),
                    sbh40,
                    SizedBox(
                      width: width * 70,
                      child: BlocConsumer<AddNewCourseBloc, AddNewCourseState>(
                        listener: (context, state) {
                          if (state.isLoaded) {
                            showCustomSnackbar(
                                message: "Course added successfully",
                                context: context);
                            Navigator.pushReplacementNamed(
                              context,
                              addNewChapterPageRoute,
                              arguments: state.courseResponse!.id,
                            );
                          }
                          if (state.isEdited) {
                            showCustomSnackbar(
                                message: "Course edited successfully",
                                context: context);
                            BlocProvider.of<TeacherCourseBloc>(context).add(
                              TeacherCourseEvent.teacherCoursesLoaded(
                                  id: savedUserId),
                            );
                            Navigator.pop(context);
                          }
                        },
                        builder: (context, state) {
                          return isEdit
                              ? EditCourseButtonWidget(
                                  state: state,
                                  imageValueNotifier: imageValueNotifier,
                                  titleController: titleController,
                                  levelController: levelController,
                                  descriptionController: descriptionController,
                                  durationController: durationController,
                                  courseModel: courseModel,
                                  categoryModel: categoryModel)
                              : AddCourseButtonWidget(
                                  state: state,
                                  imageValueNotifier: imageValueNotifier,
                                  titleController: titleController,
                                  levelController: levelController,
                                  descriptionController: descriptionController,
                                  durationController: durationController,
                                  categoryModel: categoryModel,
                                  courseModel: courseModel,
                                );
                        },
                      ),
                    ),
                    sbh20,
                    cancelButtonWidget(width, context),
                    sbh20
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
