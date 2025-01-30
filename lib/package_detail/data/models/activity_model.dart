class ActivityModel {
  final String type, title, field_1, field_2;
  final String time;

  ActivityModel({
    required this.type,
    required this.title,
    required this.field_1,
    required this.field_2,
    required this.time,
  });

  factory ActivityModel.fromJson(Map<String, dynamic> json) {
    return ActivityModel(
      type: json['type'],
      title: json['title'],
      field_1: json['field_1'],
      field_2: json['field_2'],
      time: json['time'],
    );
  }
}