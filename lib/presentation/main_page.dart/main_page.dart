import 'package:eguru_app/application/course_page/course_page_bloc.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/domain/models/user_model/user_model.dart';
import 'package:eguru_app/presentation/courses_page/courses_page.dart';
import 'package:eguru_app/presentation/favorites_page/favorites_page.dart';
import 'package:eguru_app/presentation/home_page/home_page.dart';
import 'package:eguru_app/presentation/main_page.dart/widgets/bottom_nav.dart';
import 'package:eguru_app/presentation/main_page.dart/widgets/drawer_widget.dart';
import 'package:eguru_app/presentation/profile_page/profile_page.dart';
import 'package:eguru_app/presentation/profile_page/teacher_profile.dart';
import 'package:eguru_app/presentation/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:eguru_app/constants/page_background_color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({super.key});
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;
    UserModel? userModel;
    bool isTeacher = false;
    UserTeacherModel? userTeacherModel;
    if (args is UserModel) {
      userModel = args;
      isTeacher = false;
    } else if (args is UserTeacherModel) {
      userTeacherModel = args;
      isTeacher = true;
    }
    final pages = [
      HomePage(args: args),
      SearchPage(),
      const CoursesPage(),
      const FavoritesPage(),
      const FavoritesPage(),
    ];
    List<String> titles = ["Welcome", "", "Courses", "Favorites", "Profile"];

    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int index, _) {
        if (index == 4) {
          if (args is UserModel) {
            return ProfilePage(userModel: userModel!);
          }
          if (args is UserTeacherModel) {
            return TeacherProfile(userTeacherModel: userTeacherModel!);
          }
        }
        return Container(
          decoration: scaffoldBackgroundDecoration(),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(child: pages[index]),
            //passing appbar to every screen except search
            appBar: index == 1
                ? null
                : AppBar(
                    iconTheme: const IconThemeData(color: Colors.white),

                    //passing leading button to every screen except home
                    leading: index == 0
                        ? null
                        : IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () => indexChangeNotifier.value = 0,
                          ),
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    title: Text(
                      titles[index],
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    actions: index == 0
                        ? [
                            IconButton(
                              onPressed: () {
                                BlocProvider.of<CoursePageBloc>(context)
                                    .add(const CourseEventStarted());
                              },
                              icon: const Icon(
                                Icons.refresh,
                                color: Colors.white,
                              ),
                            )
                          ]
                        : null,
                  ),
            drawer: DrawerContainerWidget(args: args, isTeacher: isTeacher),
            bottomNavigationBar: const BottomNavigationWidget(),
          ),
        );
      },
    );
  }
}
