part of 'admin_course_category_bloc.dart';

@freezed
class AdminCourseCategoryEvent with _$AdminCourseCategoryEvent {
  const factory AdminCourseCategoryEvent.started(
      {required List<CategoryModel> catagoryList}) = _Started;
  const factory AdminCourseCategoryEvent.delete({required int catagoryId}) =
      Delete;

      const factory AdminCourseCategoryEvent.reload() =
      Reload;
      const factory AdminCourseCategoryEvent.create({required String catagoryName}) =
      Create;
}
