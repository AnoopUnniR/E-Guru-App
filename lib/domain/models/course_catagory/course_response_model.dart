
import 'package:eguru_app/domain/models/course_catagory/catagory_model.dart';

class CourseResponseModel {
  final int id;
  final String title;
  final String image;
  final String desc;
  final CategoryModel category;
  // final List<int> categories;
  final int enrollments;
  final String duration;
  final String level;
  // final int teacher;
  final bool isPublish;
  final int chatRoom;

  CourseResponseModel({
    required this.id,
    required this.title,
    required this.image,
    required this.desc,
    required this.category,
    required this.enrollments,
    required this.duration,
    required this.level,
    // required this.teacher,
    required this.isPublish,
    required this.chatRoom,
  });

  factory CourseResponseModel.fromJson(Map<String, dynamic> json) {
    return CourseResponseModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      desc: json['desc'],
      category: CategoryModel.fromJson(json["cat"][0]),
      // categories: List<int>.from(json['cat']),
      enrollments: json['enrollments'],
      duration: json['duration'],
      level: json['level'],
      // teacher: json['teacher'],
      isPublish: json['is_publish'],
      chatRoom: json['chat_room'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'image': image,
      'desc': desc,
      // 'cat': categories,
      'enrollments': enrollments,
      'duration': duration,
      'level': level,
      // 'teacher': teacher,
      'is_publish': isPublish,
      'chat_room': chatRoom,
    };
  }
}
