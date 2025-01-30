class FeatureModel {
  final String title;
  final int order;
  final String? image;

  FeatureModel({
    required this.title,
    required this.order,
    this.image,
  });

  factory FeatureModel.fromJson(Map<String, dynamic> json) {
    return FeatureModel(
      title: json['title'],
      order: json['order'],
      image: json['image'],
    );
  }
}