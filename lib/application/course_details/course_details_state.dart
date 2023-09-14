part of 'course_details_bloc.dart';

@freezed
class CourseDetailsState with _$CourseDetailsState {
  const factory CourseDetailsState.loading(
      {required List<ChapterModel> chapters,
      required List<CourseReviewsModel> reviews,
      required bool isReviewsLoading,
      required bool isEnrolled,
      required bool isLoading,
      required bool isError,
      required bool isAdded,
      required bool isRemoved,
      required int reviewCount,
      required bool newReviewAdded}) = Loading;
  factory CourseDetailsState.initial() => const CourseDetailsState.loading(
      chapters: [],
      reviews: [],
      isEnrolled: false,
      isLoading: false,
      isError: false,
      isAdded: false,
      isRemoved: false,
      isReviewsLoading: false,
      reviewCount: 3,
      newReviewAdded: false);
}
