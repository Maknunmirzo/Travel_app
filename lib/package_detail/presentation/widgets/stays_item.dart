import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/package_detail/data/models/stay_model.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view_model.dart';
import 'package:travel_app/utils/constans.dart';

class Stays extends StatelessWidget {
  Stays({
    super.key,
    required this.ViewModel,
  });

  final PackageDetailViewModel ViewModel;

  @override
  Widget build(BuildContext context) {
    List<StayModel> stays = ViewModel.package.stays;
    stays.sort((a, b) => a.order.compareTo(b.order));
    return Wrap(
      runSpacing: 10,
      spacing: 10,
      runAlignment: WrapAlignment.end,
      alignment: WrapAlignment.start,
      children:
        List.generate(stays.length, (index)=>Container(
          padding: EdgeInsets.symmetric(horizontal: 2,vertical: 2),
          // height: 29,
          // width: double.infinity,
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
                  child: SvgPicture.asset("assets/svg/calendar.svg",fit: BoxFit.none,),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${stays[index].days}",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.w600,
                          color: AppColors.MainColor
                      ),
                    ),
                    Text("Kun",
                      style: TextStyle(
                          fontSize: 4,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.w600,
                          color: AppColors.MainColor
                      ),
                    ),

                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text("${stays[index].city}",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Urbanist",
                      fontWeight: FontWeight.w600,
                      color: AppColors.MainColor
                  ),
                ),
              ),
              SizedBox(width: 4,)
            ],
          ),
        ))
      ,
    );
  }
}
