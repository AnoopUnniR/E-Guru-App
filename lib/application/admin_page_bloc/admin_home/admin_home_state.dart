part of 'admin_home_bloc.dart';

@freezed
class AdminHomeState with _$AdminHomeState {
  const factory AdminHomeState.loading(
      {required bool teacherListError,
      required bool studentListError,
      required bool categoryListError,
      required bool coursesListLoading,
      required bool coursesListError,
      required bool teacherRequestListError,
      required bool teacherListLoading,
      required bool studentListLoading,
      required bool teacherRequestListLoading,
      required bool categoryListLoading,
      required List<CourseModel>coursesList,
      required List<UserTeacherModel> teacherList,
      required List<UserModel> studentsList,
      required List<UserTeacherModel> teacherRequests,
      required List<CategoryModel> categoryList}) = Loading;

  factory AdminHomeState.initial() => const AdminHomeState.loading(
      teacherListError: false,
      studentListError: false,
      categoryListError: false,
      teacherRequestListError: false,
      teacherListLoading: false,
      studentListLoading: false,
      teacherRequestListLoading: false,
      categoryListLoading: false,
      coursesListError: false,
      coursesListLoading: false,
      coursesList: [],
      teacherList: [],
      studentsList: [],
      teacherRequests: [],
      categoryList: []);
}
