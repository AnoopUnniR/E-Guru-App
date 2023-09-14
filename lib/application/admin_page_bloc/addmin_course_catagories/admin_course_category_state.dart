part of 'admin_course_category_bloc.dart';

@freezed
class AdminCourseCategoryState with _$AdminCourseCategoryState {
  const factory AdminCourseCategoryState.started({
    required List<CategoryModel>catagoryList,
    required bool isLoading,
    required bool isError,
    required bool isDelete,
    required bool isCreated,
  }) = Started;

   factory AdminCourseCategoryState.initial() =>const AdminCourseCategoryState.started(catagoryList: [],isError: false,isLoading: false,isDelete: false,isCreated: false);
}
