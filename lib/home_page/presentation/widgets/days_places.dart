import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/utils/constans.dart';

class DaysPlaces extends StatelessWidget {
  const DaysPlaces({super.key, required this.place, required this.days});

  final String place;
  final int days;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2,vertical: 2),
      // height: 29,
      // width: 108,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.MainColor, width: 1)),
      child: Row(
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
                Text("$days",
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
            child: Text("$place",
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
    );
  }
}
