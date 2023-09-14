import 'dart:io';


import 'package:eguru_app/application/add_new_course/add_new_course_bloc.dart';
import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/teacher_course/teacher_course_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/infrastructure/image_picker/pick_image.dart';
import 'package:eguru_app/presentation/login_pages/widgets/textformfield.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:eguru_app/presentation/teachers_courses/teacher_courses/add_new_course/widgets/levels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';
import 'package:eguru_app/domain/models/course_catagory/create_course_model.dart';

import 'package:image_picker/image_picker.dart';


// ignore: must_be_immutable
class AddNewCoursesPage extends StatelessWidget {
  AddNewCoursesPage({super.key});
  final TextEditingController titleCotroller = TextEditingController();
  final TextEditingController descriptionCotroller = TextEditingController();
  final TextEditingController durationCotroller = TextEditingController();
  final TextEditingController levelController = TextEditingController();
  CourseResponseModel? courseModel;
  CategoryModel? categoryModel;
  bool isEdit = false;
  ValueNotifier<XFile?> imagevalueNotifier = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    final modelData = ModalRoute.of(context)?.settings.arguments;
    double width = MediaQuery.of(context).size.width / 100;
    if (modelData is CategoryModel) {
      categoryModel = modelData;
    }
    if (modelData is CourseResponseModel && !isEdit) {
      courseModel = modelData;
      titleCotroller.text = courseModel!.title;
      descriptionCotroller.text = courseModel!.desc;
      durationCotroller.text = courseModel!.duration;
      levelController.text = courseModel!.level;
      isEdit = true;
    }
    void getLevelValue(String value) {
      levelController.text = value;
    }

    void handleTap(AddNewCourseBloc addNewCourseBloc) async {
      imagevalueNotifier.value = await PickImage.pickImage();
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
                  textWhite('Please enter your course details'),
                  sbh20,
                  BlocBuilder<AddNewCourseBloc, AddNewCourseState>(
                    builder: (context, state) {
                      return InkWell(
                        onTap: () {
                          handleTap(BlocProvider.of<AddNewCourseBloc>(context));
                        },
                        child: ValueListenableBuilder(
                          valueListenable: imagevalueNotifier,
                          builder: (context, value, child) {
                            return SizedBox(
                              width: 200,
                              height: 130,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: value != null
                                            ? DecorationImage(
                                                image: FileImage(
                                                  File(
                                                    value.path,
                                                  ),
                                                ),
                                                fit: BoxFit.cover,
                                              )
                                            : null),
                                  ),
                                  if (value == null)
                                    const Center(
                                      child: Text(
                                        "Add Image Here",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                ],
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                  sbh20,
                  InputField(
                    label: "Title",
                    controller: titleCotroller,
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
                    controller: descriptionCotroller,
                    keyboardType: TextInputType.name,
                    maxLines: null,
                  ),
                  sbh20,
                  InputField(
                    label: "Duration",
                    controller: durationCotroller,
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
                            ? ElevatedButton(
                                onPressed: () async {
                                  if (imagevalueNotifier.value == null ||
                                      titleCotroller.text.trim().isEmpty ||
                                      levelController.text.trim().isEmpty ||
                                      descriptionCotroller.text
                                          .trim()
                                          .isEmpty ||
                                      durationCotroller.text.trim().isEmpty) {
                                    showCustomSnackbar(
                                        message: "Please Fill All The Fields",
                                        context: context);
                                  }
                                  if (courseModel != null) {
                                    if (titleCotroller.text ==
                                            courseModel!.title &&
                                        levelController.text ==
                                            courseModel!.level &&
                                        descriptionCotroller.text ==
                                            courseModel!.desc &&
                                        durationCotroller.text ==
                                            courseModel!.duration) {
                                      showCustomSnackbar(
                                          message:
                                              "No values has been changed. Please click cancel if you want to cancel editing",
                                          context: context);
                                    }
                                  }

                                  NewCourseModel newCourseModel =
                                      NewCourseModel(
                                          title: titleCotroller.text,
                                          category: [
                                            categoryModel?.id ??
                                                courseModel!.category.id
                                          ],
                                          image: imagevalueNotifier.value!,
                                          description:
                                              descriptionCotroller.text,
                                          duration: durationCotroller.text,
                                          level: levelController.text,
                                          teacher: savedUserId);
                                  BlocProvider.of<AddNewCourseBloc>(context)
                                      .add(AddNewCourseEvent.courseEdited(
                                          newCourseModel, courseModel!.id));
                                  isEdit = false;
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 233, 9, 210),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                                child: state.isLoading
                                    ? const CircularProgressIndicator()
                                    : textWhite('Save'),
                              )
                            : ElevatedButton(
                                onPressed: () async {
                                  if (imagevalueNotifier.value == null ||
                                      titleCotroller.text.trim().isEmpty ||
                                      levelController.text.trim().isEmpty ||
                                      descriptionCotroller.text
                                          .trim()
                                          .isEmpty ||
                                      durationCotroller.text.trim().isEmpty) {
                                    showCustomSnackbar(
                                        message: "Please Fill All The Fields",
                                        context: context);
                                  }
                                  NewCourseModel newCourseModel =
                                      NewCourseModel(
                                          title: titleCotroller.text,
                                          category: [
                                            categoryModel?.id ??
                                                courseModel!.category.id
                                          ],
                                          image:
                                              imagevalueNotifier
                                                      .value ??
                                                  XFile("null"),
                                          description:
                                              descriptionCotroller.text,
                                          duration: durationCotroller.text,
                                          level: levelController.text,
                                          teacher: savedUserId);
                                  BlocProvider.of<AddNewCourseBloc>(context)
                                      .add(AddNewCourseEvent.courseAdded(
                                          newCourseModel));
                                  // imagevalueNotifier.dispose();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 233, 9, 210),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                                child: state.isLoading
                                    ? const CircularProgressIndicator()
                                    : textWhite('Add Course'),
                              );
                      },
                    ),
                  ),
                  sbh20,
                  SizedBox(
                    width: width * 70,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      child: textWhite('Cancel'),
                    ),
                  ),
                  sbh20
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
