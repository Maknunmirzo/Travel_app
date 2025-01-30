import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/package_detail/data/models/feature_model.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view_model.dart';

import '../../../utils/constans.dart';

class Features extends StatelessWidget {
  Features({super.key, required this.ViewModel});

  final PackageDetailViewModel ViewModel;



  @override
  Widget build(BuildContext context) {
    List<FeatureModel> features=ViewModel.package.features;
    features.sort((a, b) => a.order.compareTo(b.order));
    return Wrap(
      runSpacing: 10,
      spacing: 10,
      runAlignment: WrapAlignment.end,
      alignment: WrapAlignment.start,
      children: List.generate(
        features.length,
        (index) => Container(
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
          // height: 29,
          // width: 108,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.MainColor, width: 1)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 2,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: AppColors.MainColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    "assets/svg/tick.svg",
                    fit: BoxFit.none,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  features[index].title,
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Urbanist",
                      fontWeight: FontWeight.w700,
                      color: AppColors.MainColor),
                ),
              ),
              SizedBox(
                width: 6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
