class CategoryModel {
  final int id;
  final String name;
   int? teachersId;
  CategoryModel({
    required this.id,
    required this.name,
    this.teachersId,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
