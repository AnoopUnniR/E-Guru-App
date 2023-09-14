
class CourseReviewsModel {
  int id;
  int? rating;
  String review;
  String ratingTime;
  String userImage;
  String userName;

  CourseReviewsModel({
    required this.id,
    this.rating,
    required this.review,
    required this.ratingTime,
    required this.userImage,
    required this.userName,
  });

  factory CourseReviewsModel.fromJson(Map<String, dynamic> json) {
    return CourseReviewsModel(
        id: json["id"] as int,
        review: json["review"] as String,
        ratingTime: json["rating_time"] as String,
        rating: json["rating"] as int?,
        userImage: json["user"]["image"] as String,
        userName: json["user"]["name"] as String);
  }
}
