import 'package:travel_app/package_detail/data/models/activity_model.dart';

class DayModel {
  final int day;
  final List<ActivityModel> activities;

  DayModel({
    required this.day,
    required this.activities,
  });

  factory DayModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> rawactivities = json["activities"];
    return DayModel(
        day: json["day"],
        activities: rawactivities.map( (activity) => ActivityModel.fromJson(activity) ).toList(), );

  }
}
