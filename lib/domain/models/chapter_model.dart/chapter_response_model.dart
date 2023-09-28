class ChapterResponseModel {
  final int id;
  final String title;
  final int course;
  final int order;
  final String video;
  final bool? completed;

  ChapterResponseModel({
    required this.id,
    required this.title,
    required this.course,
    required this.order,
    required this.video,
    required this.completed,
  });

  factory ChapterResponseModel.fromJson(Map<String, dynamic> json) {
    return ChapterResponseModel(
      id: json['id'],
      title: json['title'],
      course: json['course'],
      order: json['order'],
      video: json['video'],
      completed: json['completed'],
    );
  }
}
