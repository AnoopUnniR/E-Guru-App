import 'package:eguru_app/application/admin_page_bloc/admin_requested_teachers-_details/admin_teacher_details_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_teachers_courses/admin_teacher_courses_list_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_teachers_details/admin_teacher_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/admin_pages/pages/constants/admin_appbar.dart';
import 'package:eguru_app/presentation/admin_pages/pages/teacher_details_pages/teachers_courses_page.dart';
import 'package:eguru_app/presentation/admin_pages/pages/teacher_request_pages/teacher_details_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminTeachersDetailsPage extends StatelessWidget {
  const AdminTeachersDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdminTeacherBloc, AdminTeacherState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: adminAppbar(title: state.teacher!.name),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    sbh20,
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            imageUrlConvert(state.teacher!.image),
                          ),
                        ),
                      ),
                    ),
                    TeacherDetailsColumnWidget(
                        name: state.teacher!.name,
                        email: state.teacher!.email,
                        mobile: state.teacher!.mobileNumber,
                        country: state.teacher!.country,
                        qualification: state.teacher!.highestQualification,
                        status: state.teacher!.isPending,
                        resume: state.teacher!.resume,
                        lastLogin: state.teacher!.lastLogin),
                    // state.isLoading? const Center(child: CircularProgressIndicator()) :
                    texttDetailsWidget(
                      title: "No of courses",
                      value: state.course.length.toString(),
                    ),
                    if (state.course.isNotEmpty)
                      ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<AdminTeacherCoursesListBloc>(
                                    context)
                                .add(
                              AdminTeacherCoursesListEvent.started(
                                  courses: state.course),
                            );

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AdminTeachersCoursesPage(
                                  teacher: state.teacher!,
                                ),
                              ),
                            );
                          },
                          child: const Text("View All Courses")),
                    // BlockTeacherButton(
                    //   teacherId: state.teacher!.id,
                    // ),
                    sbh20,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Text texttDetailsWidget({required String title, required String value}) {
    return Text(
      "$title : $value",
      style: const TextStyle(fontSize: 20, color: Colors.black),
    );
  }

  Text dateDetailsWidget({required String value}) {
    List val = value.split(" ");
    String date = val.first.toString().split("-").reversed.join("-");
    String time = val.last.toString().split(".").first;
    return Text(
      "Last Login\n\nDate : $date\nTime : $time  ",
      style: const TextStyle(fontSize: 20, color: Colors.black),
    );
  }
}

class BlockTeacherButton extends StatelessWidget {
  const BlockTeacherButton({super.key, required this.teacherId});
  final int teacherId;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width / 100;
    return SizedBox(
      width: width * 70,
      child: BlocBuilder<AdminTeacherDetailsBloc, AdminTeacherDetailsState>(
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () async {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            child:
                //  !state.iLoading
                // ? textWhite("Reject")
                //  :
                const CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
