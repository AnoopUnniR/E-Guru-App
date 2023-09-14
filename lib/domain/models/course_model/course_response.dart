class CourseResponse {
  final int id;
  final String title;
  final String image;
  final String desc;
  final int category;
  // final List<int> categories;
  final int enrollments;
  final String duration;
  final String level;
  // final int teacher;
  final bool isPublish;
  final int chatRoom;

  CourseResponse({
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

  factory CourseResponse.fromJson(Map<String, dynamic> json) {
    return CourseResponse(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      desc: json['desc'],
      category: json["cat"][0],
      // categories: List<int>.from(json['cat']),
      enrollments: json['enrollments'],
      duration: json['duration'],
      level: json['level'],
      // teacher: json['teacher'],
      isPublish: json['is_publish'],
      chatRoom: json['chat_room'],
    );
  }
}
