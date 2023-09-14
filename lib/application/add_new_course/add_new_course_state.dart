part of 'add_new_course_bloc.dart';

@freezed
class AddNewCourseState with _$AddNewCourseState {
  const factory AddNewCourseState.loaded(
      {required CourseResponse? courseResponse,
      required bool isLoaded,
      required bool isLoading,
      required bool isError,
      required bool isEdited,
      required bool isDeleted}) = _Loaded;
  factory AddNewCourseState.initial() => const AddNewCourseState.loaded(
      courseResponse: null,
      isLoading: false,
      isError: false,
      isLoaded: false,
      isEdited: false,
      isDeleted: false
     );

}
