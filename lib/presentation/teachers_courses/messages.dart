

import 'package:eguru_app/application/teacher_course/teacher_course_bloc.dart';
import 'package:eguru_app/domain/models/course_catagory/course_response_model.dart';
import 'package:eguru_app/presentation/courses_page/chat_page/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class TeachersMessagesPage extends StatelessWidget {
  const TeachersMessagesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueAccent.shade700),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Chapters",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<TeacherCourseBloc, TeacherCourseState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                children: [
                  ListView.builder(
                    itemCount: state.course.length,
                    itemBuilder: (context, index) {
                      CourseResponseModel course = state.course[index];
                      return ListTile(
                          contentPadding: const EdgeInsets.all(8),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChatPage(
                                    roomId: course.chatRoom,
                                    roomName: course.title),
                              ),
                            );
                          },
                          title: Text(course.title),
                        );
                    },
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(16),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
