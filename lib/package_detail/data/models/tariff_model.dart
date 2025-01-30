

import 'package:travel_app/package_detail/data/models/feature_model.dart';


class TariffModel {
  final int id, priceAfter, priceBefore;
  final String title;
  final List<FeatureModel> features;

  TariffModel({
    required this.id,
    required this.priceAfter,
    required this.priceBefore,
    required this.title,
    required this.features,
  });

  factory TariffModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> rawFutures=json["features"];
    return TariffModel(
      id: json["id"],
      priceAfter: json["priceAfter"],
      priceBefore: json["priceBefore"],
      title: json["title"],
      features: rawFutures.map((feature)=>FeatureModel.fromJson(feature)).toList(),
    );
  }
}
