import 'package:travel_app/package_detail/data/models/day_model.dart';
import 'package:travel_app/package_detail/data/models/feature_model.dart';
import 'package:travel_app/package_detail/data/models/stay_model.dart';
import 'package:travel_app/package_detail/data/models/tariff_model.dart';

class PackageDetailModel {
  final int id;
  final String title, description, start_date, end_date;
  final List<String> images;
  final List<StayModel> stays;
  final List<FeatureModel> features;
  final List<TariffModel> tariffs;
  final List<DayModel> calendar;

  PackageDetailModel({
    required this.id,
    required this.title,
    required this.description,
    required this.start_date,
    required this.end_date,
    required this.images,
    required this.stays,
    required this.features,
    required this.tariffs,
    required this.calendar,
  });


  factory PackageDetailModel.fromJson(Map<String, dynamic> json){
    return PackageDetailModel(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      start_date: json["start_date"],
      end_date: json["end_date"],
      images: json["images"],
      stays: (json['stays'] as List<dynamic>).map((stay) => StayModel.fromJson(stay)).toList(),
      features: (json['features'] as List<dynamic>).map((feature) => FeatureModel.fromJson(feature)).toList(),
      tariffs: (json['tariffs'] as List<dynamic>).map((tariff) => TariffModel.fromJson(tariff)).toList(),
      calendar: (json['calendar'] as List<dynamic>).map((day) => DayModel.fromJson(day)).toList(),
    );
  }
}
