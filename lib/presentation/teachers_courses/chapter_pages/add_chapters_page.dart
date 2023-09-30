import 'dart:io';

import 'package:eguru_app/application/add_new_chapter/add_new_chapter_bloc.dart';
import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/teacher_course/teacher_course_bloc.dart';
import 'package:eguru_app/constants/cancel_button.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/constants/page_background_color.dart';
import 'package:eguru_app/presentation/login_pages/widgets/textformfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/domain/models/chapter_model.dart/add_new_chapter_model.dart';

import 'package:file_picker/file_picker.dart';

FilePickerResult? video;

class AddNewChapterPage extends StatelessWidget {
  AddNewChapterPage({super.key});
  final TextEditingController titleController = TextEditingController();
  final TextEditingController orderController = TextEditingController();
  final TextEditingController videoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int courseId = ModalRoute.of(context)?.settings.arguments as int;
    double width = MediaQuery.of(context).size.width / 100;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Add Chapter",
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
                    sbh30,
                    InputField(
                      label: "video",
                      controller: videoController,
                      keyboardType: TextInputType.datetime,
                      enabled: false,
                      maxLines: null,
                    ),
                    sbh20,
                    InkWell(
                        onTap: () async {
                          video = await pickVideo();
                          if (video != null) {
                            if (kIsWeb) {
                              PlatformFile platformFile = video!.files.single;
                              Uint8List? videoBytes = platformFile.bytes;
                              if (videoBytes != null) {
                                videoController.text = platformFile.name;
                              }
                            } else {
                              File? videoFile = File(video!.files.single.path!);
                              videoController.text =
                                  videoFile.path.split("/").last;
                            }
                          }
                        },
                        child: Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                              child: Text(
                            "Add Video",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        )),
                    sbh20,
                    InputField(
                      label: "Title",
                      controller: titleController,
                      keyboardType: TextInputType.name,
                      maxLength: null,
                    ),
                    sbh20,
                    InputField(
                      label: "Order",
                      controller: orderController,
                      keyboardType: TextInputType.number,
                    ),
                    sbh40,
                    BlocConsumer<AddNewChapterBloc, AddNewChapterState>(
                      listener: (context, state) {
                        if (state.isLoaded) {
                          BlocProvider.of<TeacherCourseBloc>(context).add(
                            TeacherCourseEvent.teacherCoursesLoaded(
                                id: savedUserId),
                          );
                          showCustomSnackbar(
                              message: "Chapter added Successfully",
                              context: context);
                          FocusScope.of(context).unfocus();
                          Navigator.pop(context);
                          Navigator.pop(context);
                        }
                      },
                      builder: (context, state) {
                        return SizedBox(
                          width: width * 70,
                          child: ElevatedButton(
                            onPressed: () async {
                              if (video == null ||
                                  titleController.text.trim().isEmpty ||
                                  orderController.text.trim().isEmpty) {
                                showCustomSnackbar(
                                    message: "Please Fill All The Fields",
                                    context: context);
                              } else {
                                CreateChapterModel chapterModel =
                                    CreateChapterModel(
                                        title: titleController.text,
                                        video: video!,
                                        order: int.parse(orderController.text),
                                        course: courseId);
                                BlocProvider.of<AddNewChapterBloc>(context).add(
                                  AddNewChapterEvent.started(
                                    createChapterModel: chapterModel,
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 233, 9, 210),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                            child: state.isLoading
                                ? const CircularProgressIndicator()
                                : const Text('Add Course'),
                          ),
                        );
                      },
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

  Future<FilePickerResult?> pickVideo() async {
    // FilePickerResult? result =
    return await FilePicker.platform.pickFiles(
      type: FileType.video,
    );
    // if (result != null) {
    //   File? videoFile = File(result.files.single.path!);
    //   videoController.text = videoFile.path;
    //   return videoFile;
    // } else {
    //   return null;
    // }
  }

  Future pickVideoWeb() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.video,
    );
    if (result != null) {
      Uint8List? videoBytes = result.files.single.bytes;
      if (videoBytes != null) {
        // Handle the videoBytes, e.g., send them to your server or process them
        videoController.text = 'Video selected';
        return videoBytes;
      }
    }
    return null;
  }
}
