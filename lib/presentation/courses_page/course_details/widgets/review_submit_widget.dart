
import 'package:eguru_app/application/course_details/course_details_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

final TextEditingController reviewController = TextEditingController();
final TextEditingController ratingController = TextEditingController();

class ReviewSubmitFieldWidget extends StatelessWidget {
  const ReviewSubmitFieldWidget({super.key, required this.courseId});
  final int courseId;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                controller: reviewController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.white, width: 5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.white, width: 3),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide: BorderSide(color: Colors.white, width: 3),
                  ),
                  hintText: "Enter Review Here",
                  contentPadding:
                      EdgeInsets.only(left: 50, top: 20, bottom: 20, right: 50),
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
            ),
            sbw10,
            ElevatedButton(
              onPressed: () {
                if (reviewController.text.trim().isEmpty) {
                  showCustomSnackbar(
                      message: "Please enter your review", context: context);
                  return;
                }
                if (ratingController.text.trim().isEmpty) {
                  showCustomSnackbar(
                      message: "Please rate the course", context: context);
                  return;
                }

                BlocProvider.of<CourseDetailsBloc>(context).add(AddReview(
                    courseId: courseId,
                    review: reviewController.text.trim(),
                    rating: int.parse(ratingController.text)));
                reviewController.clear();
                reviewController.clear();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 233, 9, 210),
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text("Submit",style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        sbh10,
        // if (reviewController.text.trim().isNotEmpty)
        RatingBar(
          direction: Axis.horizontal,
          initialRating: 0,
          itemCount: 5,
          ratingWidget: RatingWidget(
            empty: const Icon(
              Icons.star_outline_rounded,
              color: Colors.white,
            ),
            half: sbh10,
            full: const Icon(
              Icons.star_outlined,
              color: Colors.amber,
            ),
          ),
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          onRatingUpdate: (rating) {
            ratingController.text = rating.toInt().toString();
          },
        )
      ],
    );
  }
}
