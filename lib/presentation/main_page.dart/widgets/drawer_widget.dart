import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/teacher_course/teacher_course_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/core/share_app/share_app.dart';
import 'package:eguru_app/infrastructure/image_provider/image_provider.dart';
import 'package:eguru_app/presentation/info_pages/about_us.dart';
import 'package:eguru_app/presentation/info_pages/privacy_policy.dart';
import 'package:eguru_app/presentation/main_page.dart/widgets/restart_app.dart';
import 'package:eguru_app/presentation/profile_page/widgets/logout_button.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:eguru_app/presentation/teachers_courses/messages.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerContainerWidget extends StatelessWidget {
  const DrawerContainerWidget({
    super.key,
    required this.args,
    required this.isTeacher,
  });

  final dynamic args;
  final bool isTeacher;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 72, 22, 236),
              Color.fromARGB(255, 162, 140, 242),
              Color.fromARGB(255, 72, 22, 236),
            ],
          ),
        ),
        child: Drawer(
          backgroundColor: Colors.transparent,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    Container(
                      margin: const EdgeInsets.all(30),
                      height: 130,
                      width: 20,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 16, 52, 212)
                            .withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          sbh10,
                          CircleAvatar(
                            backgroundImage:
                                ImageProviderClass.imageProviderFunc(args),
                            radius: 40,
                          ),
                          sbh10,
                          Text(
                            args.name,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    !isTeacher
                        ? const SizedBox()
                        : ListTile(
                            title: const Text(
                              "Your Courses",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.pushNamed(
                                  context, addedCoursesPageRoute,
                                  arguments: args);
                            },
                          ),
                    !isTeacher
                        ? const SizedBox()
                        : ListTile(
                            title: const Text(
                              "Messages",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            onTap: () {
                              BlocProvider.of<TeacherCourseBloc>(context).add(
                                TeacherCourseEvent.teacherCoursesLoaded(
                                    id: savedUserId),
                              );
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                DialogRoute(
                                  context: context,
                                  builder: (context) =>
                                      const TeachersMessagesPage(),
                                ),
                              );
                            },
                          ),
                    // !isTeacher
                    //     ? const SizedBox()
                    //     : ListTile(
                    //         title: const Text(
                    //           "Go Live",
                    //           style: TextStyle(color: Colors.white, fontSize: 25),
                    //         ),
                    //         onTap: () {},
                    //       ),

                    ListTile(
                      title: const Text(
                        "About Us",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutUsPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text(
                        "Privacy Policy",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PrivacyPolicyPage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text(
                        "Restart",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const RestartAppWidget();
                          },
                        );
                      },
                    ),
                   if(!kIsWeb) ListTile(
                      title: const Text(
                        "Share App",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      onTap: () {
                        ShareApp().shareApp();
                      },
                    ),
                  ],
                ),
                const LogOutButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
