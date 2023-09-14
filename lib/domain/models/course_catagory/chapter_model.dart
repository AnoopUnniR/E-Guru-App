class ChapterModel {
  final int id;
  final String title;
  final String video;
  final int order;
  final int course;

  ChapterModel({
    required this.id,
    required this.title,
    required this.video,
    required this.order,
    required this.course,
  });

  factory ChapterModel.fromJson(Map<String, dynamic> json) {
    return ChapterModel(
      id: json['id'],
      title: json['title'],
      video: json['video'],
      order: json['order'],
      course: json['course'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'video': video,
      'order': order,
      'course': course,
    };
  }
}
