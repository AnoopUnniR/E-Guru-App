

import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/courses_page/course_details/course_details_page.dart';
import 'package:eguru_app/presentation/login_pages/login_screen.dart';
import 'package:eguru_app/presentation/login_pages/otp_verification/otp_verify_page.dart';
import 'package:eguru_app/presentation/login_pages/signup_page.dart';
import 'package:eguru_app/presentation/login_pages/teacher_signup.dart';
import 'package:eguru_app/presentation/main_page.dart/main_page.dart';
import 'package:eguru_app/presentation/splash_screen/splash_screen.dart';
import 'package:eguru_app/presentation/teachers_courses/add_chapters_page.dart';
import 'package:eguru_app/presentation/teachers_courses/category_create_page.dart/create_category.dart';
import 'package:eguru_app/presentation/teachers_courses/chapter_pages/chapters_page.dart';
import 'package:eguru_app/presentation/teachers_courses/teacher_courses/add_new_course/add_new_courses.dart';
import 'package:eguru_app/presentation/teachers_courses/teacher_courses/courses_page.dart';
import 'package:eguru_app/presentation/teachers_courses/video_player_page.dart';
import 'package:flutter/material.dart';


const String mainPageRoute = "mainPage";
const String loginPageRoute = "loginpage";
const String splashScreenRoute = "splashScreen";
const String signUpPageRoute = "signupPage";
const String profilePageRoute = "profilePage";
const String teacherSignupPageRoute = "teacherSignupPageRoute";
const String otpVerificationPageRoute = "otpVerificationPageRoute";
const String addedCoursesPageRoute = "addedCoursesPageRoute";
const String addNewCoursePageRoute = "addNewCoursePageRoute";
const String courseDetailsPageRoute = "courseDetailsPageRoute";
const String catagoryPageRoute = "createNewCatoagoryPageRoute";
const String addNewChapterPageRoute = "addNewChapterPageRoute";
const String teacherChaptersPageRoute = "teacherChapterPageRoute";
const String videoPlayerPageRoute = "vidoePlayerPageRoute";
class ScreenRouting {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreenRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case mainPageRoute:
        return MaterialPageRoute(
          builder: (_) => const ScreenMainPage(),
          settings: RouteSettings(arguments: settings.arguments),
        );
      case loginPageRoute:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case signUpPageRoute:
        return MaterialPageRoute(
          builder: (_) => SignupScreen(),
        );
      case teacherSignupPageRoute:
        return MaterialPageRoute(
          builder: (_) => TeacherSignupPage(),
          settings: RouteSettings(arguments: settings.arguments),
        );
      case otpVerificationPageRoute:
        return MaterialPageRoute(
          builder: (context) => OtpVerificationPage(),
          settings: RouteSettings(arguments: settings.arguments),
        );
      case addedCoursesPageRoute:
        return MaterialPageRoute(
          builder: (context) => const AddedCoursesPage(),
          settings: RouteSettings(arguments: settings.arguments),
        );
      case addNewCoursePageRoute:
        return MaterialPageRoute(
          builder: (context) => AddNewCoursesPage(),
          settings: RouteSettings(arguments: settings.arguments),
        );
      case courseDetailsPageRoute:
        return MaterialPageRoute(
          builder: (context) => const CourseDetailPage(),
          settings: RouteSettings(arguments: settings.arguments),
        );
      case catagoryPageRoute:
        return MaterialPageRoute(
          builder: (context) => const CreateCategoryPage(),
          settings: RouteSettings(arguments: settings.arguments),
        );
      case addNewChapterPageRoute:
        return MaterialPageRoute(
          builder: (context) => AddNewChapterPage(),
          settings: RouteSettings(arguments: settings.arguments),
        );
      case teacherChaptersPageRoute:
        return MaterialPageRoute(
          builder: (context) =>  const TeacherChaptersPage(),
          settings: RouteSettings(arguments: settings.arguments),
        );
        case videoPlayerPageRoute:
        return MaterialPageRoute(
          builder: (context) => const VideoPlayerPage(),
          settings: RouteSettings(arguments: settings.arguments),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: textWhite("No route defined for the name"),
            ),
          ),
        );
    }
  }
}
