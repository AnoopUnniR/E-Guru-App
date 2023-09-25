import 'package:eguru_app/application/add_new_chapter/add_new_chapter_bloc.dart';
import 'package:eguru_app/application/add_new_course/add_new_course_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/addmin_course_catagories/admin_course_category_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_chapters_list/admin_chapters_list_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_courses/admin_courses_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_home/admin_home_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_requested_teachers-_details/admin_teacher_details_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_students_list/admin_students_list_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_teachers_courses/admin_teacher_courses_list_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_teachers_details/admin_teacher_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_teachers_list/admin_teachers_list_page_bloc.dart';
import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/application/course_catagory/course_catagory_bloc.dart';
import 'package:eguru_app/application/course_details/course_details_bloc.dart';
import 'package:eguru_app/application/course_page/course_page_bloc.dart';
import 'package:eguru_app/application/favorites/favourites_bloc.dart';
import 'package:eguru_app/application/profile_page/profile_page_bloc.dart';
import 'package:eguru_app/application/search_page/search_page_bloc.dart';
import 'package:eguru_app/application/signup_bloc/signup_bloc.dart';
import 'package:eguru_app/application/teacher_chapter/teacher_course_chaper_bloc.dart';
import 'package:eguru_app/application/teacher_course/teacher_course_bloc.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthenticationBloc()
            ..add(
              AuthenticationCheckEvent(),
            ),
        ),
        BlocProvider(create: (context) => SignupBloc()),
        BlocProvider(create: (context) => ProfilePageBloc()),
        BlocProvider(create: (context) => CourseCatagoryBloc()),
        BlocProvider(create: (context) => AddNewCourseBloc()),
        BlocProvider(create: (context) => AddNewChapterBloc()),
        BlocProvider(create: (context) => TeacherCourseBloc()),
        BlocProvider(create: (context) => TeacherCourseChaperBloc()),
        BlocProvider(create: (context) => CourseDetailsBloc()),
        BlocProvider(create: (context) => SearchPageBloc()),
        BlocProvider(
            create: (context) =>
                CoursePageBloc()..add(const CourseEventStarted())),
        BlocProvider(
            create: (context) =>
                FavouritesBloc()..add(const FavoritesStarted())),

        // admin blocs----------------------------------------------------------------
        BlocProvider(
            create: (context) =>
                AdminHomeBloc()..add(const AdminHomeEvent.started())),
        BlocProvider(
          create: (context) => AdminTeachersListPageBloc(),
        ),
        BlocProvider(
          create: (context) => AdminTeacherDetailsBloc(),
        ),
        BlocProvider(
          create: (context) => AdminTeacherCoursesListBloc(),
        ),
        BlocProvider(
          create: (context) => AdminTeacherBloc(),
        ),
        BlocProvider(
          create: (context) => AdminChaptersListBloc(),
        ),
        BlocProvider(
          create: (context) => AdminStudentsListBloc(),
        ),
        BlocProvider(
          create: (context) => AdminCourseCategoryBloc(),
        ),
        BlocProvider(
          create: (context) => AdminCoursesBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
          appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.white),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                  textStyle: const TextStyle(color: Colors.white,)
                ,),
          ),
        ),
        onGenerateRoute: ScreenRouting.generateRoute,
        initialRoute: splashScreenRoute,
      ),
    );
  }
}
