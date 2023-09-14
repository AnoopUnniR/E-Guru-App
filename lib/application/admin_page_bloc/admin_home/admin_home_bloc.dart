
import 'package:eguru_app/domain/core/failures/main_failures.dart';
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/domain/models/user_model/user_model.dart';
import 'package:eguru_app/infrastructure/admin/get_all_users_repo.dart';
import 'package:eguru_app/infrastructure/course/get_all_course.dart';
import 'package:eguru_app/infrastructure/course_category/category_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'admin_home_event.dart';
part 'admin_home_state.dart';
part 'admin_home_bloc.freezed.dart';

class AdminHomeBloc extends Bloc<AdminHomeEvent, AdminHomeState> {
  AdminServices adminServices = AdminServices();
  CategoryRepository categoryRepository = CategoryRepository();
  CourseRepository courseRepository = CourseRepository();
  AdminHomeBloc() : super(AdminHomeState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(
          teacherListLoading: true,
          studentListLoading: true,
          teacherRequestListLoading: true));
      add(const AdminHomeEvent.teacherRequestListEvent());
      add(const AdminHomeEvent.studentListEvent());
      add(const AdminHomeEvent.teacherListEvent());
      add(const AdminHomeEvent.categoryListEvent());
      add(const AdminHomeEvent.courseListEvent());
    });
    on<TeacherRequestListEvent>((event, emit) async {
      final teacherRequest =
          await adminServices.getAllTeacherRequestsRepository();
      final states = teacherRequest.fold(
        (MainFailures left) {
          return state.copyWith(teacherRequestListError: true);
        },
        (right) => state.copyWith(
            teacherRequests: right, teacherRequestListLoading: false),
      );
      emit(states);
    });
    on<TeacherListEvent>((event, emit) async {
      final teacherList = await adminServices.getAllTeachersRepository();
      final states1 = teacherList.fold(
        (MainFailures left) => state.copyWith(teacherListError: true),
        (right) =>
            state.copyWith(teacherList: right, teacherListLoading: false),
      );
      emit(states1);
    });
    on<StudentListEvent>((event, emit) async {
      final studentList = await adminServices.getAllStudentRepository();
      final state2 = studentList.fold(
        (MainFailures left) => state.copyWith(teacherListError: true),
        (right) =>
          state.copyWith(studentsList: right, studentListLoading: false),
      );
      emit(state2);
    });
    on<CategoryListEvent>((event, emit) async {
      emit(state.copyWith(categoryListLoading: true));
      final response = await categoryRepository.allCatagory();
      final states = response.fold(
          (left) => state.copyWith(categoryListError: true),
          (right) =>
              state.copyWith(categoryList: right, categoryListLoading: false));
      emit(states);
    });
    on<CourseListEvent>((event, emit) async {
      emit(state.copyWith(coursesListLoading: true));
      final response = await courseRepository.getAllCourses();
      final states = response.fold(
          (left) => state.copyWith(coursesListError: true),
          (right) =>
              state.copyWith(coursesList: right, coursesListLoading: false));
      emit(states);
    });
  }
}
