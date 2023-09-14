import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';

class CourseModel {
  final int courseId;
  final String title;
  final String image;
  final String desc;
  final CategoryModel category;
  // final String categoryName;
  final int enrollments;
  final String duration;
  final String level;
  final String teacherMobile;
  final int teacherId;
  final String teacherImage;
  final String teacherName;
  final String teacherEmail;
  final String teacherCountry;
  final String? averageRating;
  final int chatRoom;
  CourseModel(
      {required this.courseId,
      required this.title,
      required this.image,
      required this.desc,
      required this.category,
      // required this.categoryName,
      required this.enrollments,
      required this.duration,
      required this.level,
      required this.teacherId,
      required this.teacherImage,
      required this.teacherName,
      required this.teacherEmail,
      required this.teacherMobile,
      required this.teacherCountry,
      required this.averageRating,
      required this.chatRoom});

  factory CourseModel.fromJson(Map<String, dynamic> json) => CourseModel(
        courseId: json['id'] as int,
        title: json['title'] as String,
        image: json['image'] as String,
        desc: json['desc'] as String,
        category: CategoryModel.fromJson(json["cat"][0]),
        // categoryName: json['cat'][0]['name'] as String,
        enrollments: json['enrollments'] as int,
        duration: json['duration'] as String,
        level: json['level'] as String,
        teacherId: json['teacher']['user']['id'] as int,
        teacherImage: json['teacher']['user']['image'] as String,
        teacherName: json['teacher']['user']['name'] as String,
        teacherEmail: json['teacher']['user']['email'] as String,
        teacherMobile: json["teacher"]['user']['mobile_number'] as String,
        teacherCountry: json['teacher']['user']['country'] as String,
        averageRating: json['avg_rating'] as String?,
        chatRoom: json['chat_room'] as int,
      );
}

// class CatagoryModel {
//   final int catagoryId;
//   final String title;

//   CatagoryModel({required this.catagoryId, required this.title});

//   factory CatagoryModel.fromJson(Map<String, dynamic> json) =>
//       CatagoryModel(catagoryId: json["id"], title: json["name"]);
// }
