part of 'course_catagory_bloc.dart';

@freezed
class CourseCatagoryState with _$CourseCatagoryState {
  const factory CourseCatagoryState({
    required bool isLoading,
    required List catagory,
    required bool isError

  }) = _CourseCatagoryState;

  factory CourseCatagoryState.initial() =>const CourseCatagoryState(isLoading: true,catagory: [],isError: false);
}
