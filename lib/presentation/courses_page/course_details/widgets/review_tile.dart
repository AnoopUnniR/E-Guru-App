import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/course_reviews_model/course_reviews_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewTile extends StatelessWidget {
  const ReviewTile({
    super.key,
    required this.review,
  });

  final CourseReviewsModel review;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 2, 5, 52).withOpacity(0.8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                constraints: const BoxConstraints(maxHeight: 30, maxWidth: 30),
                height: width * 10,
                width: width * 10,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(profileImage),
                  ),
                ),
              ),
              sbw10,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(review.userName),
                        Text(review.ratingTime.split("-").reversed.join("-"))
                      ],
                    ),
                  ),
                  RatingBarIndicator(
                    rating: review.rating!.ceilToDouble(),
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: review.rating!,
                    itemSize: 20.0,
                    direction: Axis.horizontal,
                  )
                ],
              )
            ],
          ),
          sbh10,
          Text(review.review)
        ],
      ),
    );
  }
}
