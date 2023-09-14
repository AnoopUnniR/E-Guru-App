import 'package:dio/dio.dart';
import 'package:eguru_app/domain/models/course_catagory/chapter_model.dart';
import 'package:eguru_app/domain/models/course_reviews_model/course_reviews_model.dart';
import 'package:eguru_app/infrastructure/course/enroll_course.dart';
import 'package:eguru_app/infrastructure/reviews/review_implementation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_details_event.dart';
part 'course_details_state.dart';
part 'course_details_bloc.freezed.dart';

class CourseDetailsBloc extends Bloc<CourseDetailsEvent, CourseDetailsState> {
  // ChapterRepository chapterRepository = ChapterRepository();
  EnrollCourseRepository enrollCourseRepository = EnrollCourseRepository();
  ReviewRepository reviewRepository = ReviewRepository();
  CourseDetailsBloc() : super(CourseDetailsState.initial()) {
    //loads al the chapters
    on<ChapterLoading>((event, emit) async {
      emit(state.copyWith(isLoading: true, isRemoved: false, isAdded: false));
      Response response =
          await enrollCourseRepository.checkEnroll(event.courseId);
      if (response.statusCode == 200) {
        if (response.data) {
          emit(state.copyWith(isEnrolled: true, isLoading: false));
        } else {
          emit(state.copyWith(isLoading: false, isEnrolled: false));
        }
        add(LoadReviews(courseId: event.courseId));
      }
    });
    //enroll into a course
    on<EnrollCourse>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response courseResponse =
          await enrollCourseRepository.enrollCourse(event.courseId);
      if (courseResponse.statusCode == 201) {
        emit(state.copyWith(isAdded: true));
        add(ChapterLoading(courseId: event.courseId));
      }
    });
    //unenroll from a course
    on<UnEnrollCourse>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      Response response =
          await enrollCourseRepository.unEnrollCourse(event.courseId);
      if (response.statusCode == 200) {
        emit(state.copyWith(isRemoved: true));
        add(ChapterLoading(courseId: event.courseId));
      }
    });
    on<AddReview>((event, emit) async {
      Response response = await reviewRepository.addReviews(
          event.review, event.rating, event.courseId);
      if (response.statusCode == 201) {
        emit(state.copyWith(newReviewAdded: true));
        add(CourseDetailsEvent.loadReviews(courseId: event.courseId));
      }
    });

    on<LoadReviews>((event, emit) async {
      emit(state.copyWith(isReviewsLoading: true,newReviewAdded: false));
      Response response = await reviewRepository.getAllReviews(event.courseId);
      if (response.statusCode == 200) {
        List<CourseReviewsModel> review = [];
        for (var element in response.data) {
          review.add(CourseReviewsModel.fromJson(element));
        }
        emit(state.copyWith(
          reviews: review,
          isReviewsLoading: false,
          reviewCount: 3,
        ));
      }
    });

    on<LoadMoreReview>((event, emit) {
      if (event.reviewCount != state.reviews.length) {
        int review = event.reviewCount + 5;
        if (review > state.reviews.length) {
          review = state.reviews.length;
        }
        return emit(state.copyWith(reviewCount: review));
      }
    });
  }
}
