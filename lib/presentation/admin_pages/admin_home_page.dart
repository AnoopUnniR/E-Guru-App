import 'package:eguru_app/application/admin_page_bloc/addmin_course_catagories/admin_course_category_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_courses/admin_courses_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_home/admin_home_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_students_list/admin_students_list_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_teachers_list/admin_teachers_list_page_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/admin_pages/pages/courses_category_page.dart/courses_catagory_list.dart';
import 'package:eguru_app/presentation/admin_pages/pages/courses_list/admin_courses_list_page.dart';
import 'package:eguru_app/presentation/admin_pages/pages/students_page/students_page.dart';
import 'package:eguru_app/presentation/admin_pages/pages/teacher_details_pages/teachers_list_page.dart';
import 'package:eguru_app/presentation/admin_pages/pages/teacher_request_pages/teacher_request_list_page.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/infrastructure/shared_prefernce/token_handler.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: AppBar(
        title: blText("welcome admin"),
        centerTitle: true,
      ),
      drawer: const AdminDrawerWidget(),
      body: BlocBuilder<AdminHomeBloc, AdminHomeState>(
        builder: (context, state) {
          return SafeArea(
              child: RefreshIndicator(
            child: GridView(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
              children: <Widget>[
                //teacher request tile
                InkWell(
                  onTap: () {
                    BlocProvider.of<AdminTeachersListPageBloc>(context).add(
                        AdminTeachersListPageEvent.started(
                            teachersList: state.teacherRequests));

                    if (state.teacherRequests.isEmpty) {
                      showCustomSnackbar(
                          message: "No new Teacher requests to show.!",
                          context: context);
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const AdminTeachersRequestListPage(),
                        ),
                      );
                    }
                  },
                  child: AdminDetailsCardWidget(
                    num: state.teacherRequests.length,
                    title: "Teacher\nRequests",
                    isLoading: state.teacherRequestListLoading,
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (state.studentsList.isEmpty) {
                      showCustomSnackbar(
                          message: "No Students data to show",
                          context: context);
                      return;
                    }
                    BlocProvider.of<AdminStudentsListBloc>(context).add(
                        AdminStudentsListEvent.started(
                            userList: state.studentsList));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminStudentsListPage(),
                        ));
                  },
                  child: AdminDetailsCardWidget(
                    num: state.studentsList.length,
                    title: "Students List",
                    isLoading: state.studentListLoading,
                  ),
                ),

                //teachers list tile
                InkWell(
                  child: AdminDetailsCardWidget(
                    num: state.teacherList.length,
                    title: "Teachers List",
                    isLoading: state.teacherListLoading,
                  ),
                  onTap: () {
                    if (state.teacherList.isEmpty) {
                      showCustomSnackbar(
                          message: "No teachers data to show",
                          context: context);
                      return;
                    }
                    BlocProvider.of<AdminTeachersListPageBloc>(context).add(
                        AdminTeachersListPageEvent.started(
                            teachersList: state.teacherList));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdminTeachersListPage(),
                      ),
                    );
                  },
                ),

                //courses list tile
                InkWell(
                  onTap: () {
                    BlocProvider.of<AdminCourseCategoryBloc>(context).add(
                      AdminCourseCategoryEvent.started(
                          catagoryList: state.categoryList),
                    );

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AdminCoursesCatagoryListPage(),
                      ),
                    );
                  },
                  child: AdminDetailsCardWidget(
                      num: state.categoryList.length,
                      title: "Course\nCatagories",
                      isLoading: state.categoryListLoading),
                ),
                InkWell(
                  onTap: () {
                    if (state.coursesList.isEmpty) {
                      showCustomSnackbar(
                          message: "No Courses data to show", context: context);
                      return;
                    }
                    BlocProvider.of<AdminCoursesBloc>(context).add(
                      AdminCoursesEvent.started(courses: state.coursesList),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdminCoursesPage(),
                      ),
                    );
                  },
                  child: AdminDetailsCardWidget(
                      num: state.coursesList.length,
                      title: "Courses",
                      isLoading: state.coursesListLoading),
                ),
              ],
            ),
            onRefresh: () {
              BlocProvider.of<AdminHomeBloc>(context)
                  .add(const AdminHomeEvent.started());
              return Future(() => null);
            },
          ));
        },
      ),
    );
  }
}

class AdminDrawerWidget extends StatelessWidget {
  const AdminDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        ListTile(
          title: const Text(
            "Log Out",
            style: TextStyle(color: Colors.black),
          ),
          onTap: () {
            Navigator.pop(context);
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title:
                    const Text('Logout', style: TextStyle(color: Colors.black)),
                content: const Text(
                  'Are you sure you want to log out?',
                  style: TextStyle(color: Colors.black),
                ),
                actions: [
                  ElevatedButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Logout'),
                    onPressed: () {
                      SaveToken.deleteToken();
                      Navigator.of(context).pop();
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        loginPageRoute,
                        (route) => false,
                      );
                    },
                  ),
                ],
              ),
            );
          },
        )
      ],
    ));
  }
}

class AdminDetailsCardWidget extends StatelessWidget {
  const AdminDetailsCardWidget(
      {super.key,
      required this.num,
      required this.title,
      required this.isLoading});
  final int num;
  final String title;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Card(
        elevation: 20,
        child: Container(
          width: 30,
          height: 20,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(0),
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: width * 6,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                    isLoading
                        ? const CircularProgressIndicator()
                        : Text(
                            num.toString(),
                            style: TextStyle(
                              fontSize: width * 10,
                              color: Colors.black,
                            ),
                          ),
                    const SizedBox()
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

Widget blText(String val) => Text(
      val,
      style: const TextStyle(
        color: Colors.black,
      ),
    );
