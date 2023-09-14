part of 'course_details_bloc.dart';

@freezed
class CourseDetailsEvent with _$CourseDetailsEvent {
  const factory CourseDetailsEvent.chapterLoading({required int courseId}) =
      ChapterLoading;
  const factory CourseDetailsEvent.enrollCourse({required int courseId}) =
      EnrollCourse;
      const factory CourseDetailsEvent.unEnrollCourse({required int courseId}) =
      UnEnrollCourse;
      const factory CourseDetailsEvent.addReview({required int courseId,required String review,required int rating}) =
      AddReview;
       const factory CourseDetailsEvent.loadReviews({required int courseId}) =
      LoadReviews;
       const factory CourseDetailsEvent.loadMoreReview({required int reviewCount,}) =
      LoadMoreReview;
}
