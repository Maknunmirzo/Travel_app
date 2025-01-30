class StayModel {
  StayModel({required this.order, required this.days, required this.city});

  final int order;
  final int days;
  final String city;

  factory StayModel.fromJson(Map<String, dynamic> json) {
    return StayModel(
      order: json["order"],
      days: json["days"],
      city: json["city"],
    );
  }
}
