import 'package:eguru_app/application/course_details/course_details_bloc.dart';
import 'package:eguru_app/application/favorites/favourites_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_reviews_model/course_reviews_model.dart';
import 'package:eguru_app/presentation/courses_page/course_details/widgets/course_chapter_videos.dart';
import 'package:eguru_app/presentation/courses_page/course_details/widgets/enroll_button.dart';
import 'package:eguru_app/presentation/courses_page/course_details/widgets/message_button.dart';
import 'package:eguru_app/presentation/courses_page/course_details/widgets/review_submit_widget.dart';
import 'package:eguru_app/presentation/courses_page/course_details/widgets/review_tile.dart';
import 'package:eguru_app/presentation/courses_page/widgets/favorites_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eguru_app/constants/page_background_color.dart';
import 'package:eguru_app/domain/models/course_model/course_model.dart';

class CourseDetailPage extends StatelessWidget {
  const CourseDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    CourseModel course =
        ModalRoute.of(context)?.settings.arguments as CourseModel;

    double width = MediaQuery.of(context).size.width / 100;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            course.title,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
          actions: [
            BlocListener<FavouritesBloc, FavouritesState>(
              listener: (context, state) {
                if (state is AddNewFavorites || state is RemoveFavorites) {
                  favouritesSnackbar(
                      context, state.isFavorite, state.isFavRemoved);
                }
              },
              child: FavoritesButton(course: course.courseId),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocConsumer<CourseDetailsBloc, CourseDetailsState>(
            listener: (context, state) {
              if (state.newReviewAdded) {
                showCustomSnackbar(
                    message: "Review added successfully", context: context);
              }
              if (state.isAdded) {
                showCustomSnackbar(
                    message: "course Added successfully", context: context);
              }
              if (state.isRemoved) {
                showCustomSnackbar(
                    message: "course Removed successfully", context: context);
              }
            },
            builder: (context, state) {
              return SafeArea(
                  child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      sbh10,
                      Container(
                        constraints: const BoxConstraints(
                            maxWidth: 600, maxHeight: 300, minHeight: 150),
                        width: width * 85,
                        height: width * 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(imageUrlConvert(course.image)),
                          ),
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      sbh10,
                      Text(
                        course.title,
                        style: const TextStyle(fontSize: 30),
                      ),
                      sbh20,
                      sbh20,
                      SizedBox(
                        width: width * 85,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Created by : ${course.teacherName}",
                              style: const TextStyle(fontSize: 15),
                            ),
                            Text(
                              "students enrolled : ${course.enrollments}",
                              style: const TextStyle(fontSize: 15),
                            ),
                            Text(
                              course.averageRating ?? "",
                              style: const TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      // courses videoss--------------------------------------
                      state.isEnrolled
                          ? AnimatedContainer(
                              duration: const Duration(seconds: 1000),
                              height: state.isLoading ? 0 : null,
                              child: ChapterVideoTiles(course: course),
                            )
                          : const Center(
                              child: Text(
                                "Please Enrol To See Chapter Contents Here",
                              ),
                            ),
                      sbh20,
                      //enroll button--------------------------------
                      SizedBox(
                        width: width * 70,
                        child: Stack(
                          children: [
                            //messaage button--------------------------------
                            ChatButtonWidget(
                              isVisible: state.isEnrolled,
                              courseName: course.title,
                              chatId: course.chatRoom,
                            ),
                            EnrollButtonWidget(
                              width: width,
                              course: course,
                              state: state,
                            ),
                          ],
                        ),
                      ),
                      sbh20,
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Course Description",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: width * 100,
                          child: Text(
                            course.desc,
                          ),
                        ),
                      ),
                      sbh20,
                     const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Reviews",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      sbh10,
                      //reviews enetering textfield----------------------------------
                      state.isEnrolled
                          ? ReviewSubmitFieldWidget(
                              courseId: course.courseId,
                            )
                          : const SizedBox(),
                      sbh10,
                      state.reviews.isEmpty
                          ? const SizedBox(
                              height: 50,
                              child: Text("No reviews yet"),
                            )
                          : ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: state.reviews.length < 5
                                  ? state.reviews.length
                                  : state.reviewCount,
                              itemBuilder: (context, index) {
                                List<CourseReviewsModel> reviews = [
                                  ...state.reviews.reversed
                                ];
                                CourseReviewsModel review = reviews[index];
                                return ReviewTile(review: review);
                              },
                              separatorBuilder: (context, index) => sbh10,
                            ),
                      if (state.reviewCount < state.reviews.length)
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CourseDetailsBloc>(context).add(
                              LoadMoreReview(
                                reviewCount: state.reviewCount,
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side:
                                const BorderSide(color: Colors.white, width: 2),
                          ),
                          child: const Text('Load more reviews'),
                        )
                    ],
                  ),
                ),
              ));
            },
          ),
        ),
      ),
    );
  }
}
