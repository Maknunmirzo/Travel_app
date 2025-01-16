import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/home_page/presentation/widgets/daysitem.dart';
import 'package:travel_app/utils/constans.dart';

class MainItemImage extends StatelessWidget {
  const MainItemImage({
    super.key,
    required this.image,
    required this.firstDay,
    required this.endDay,
    required this.days,
  });

  final String image;
  final String firstDay, endDay, days;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(image),
              height: 169,
              width: 285,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 142,
            left: 58,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("assets/svg/flight.svg"),
                SizedBox(
                  width: 6,
                ),
                DaysItem(day: firstDay),
                SizedBox(
                  width: 6,
                ),
                SvgPicture.asset("assets/svg/landing.svg"),
                SizedBox(
                  width: 6,
                ),
                DaysItem(day: endDay),
              ],
            ),
          ),
          Positioned(
              top: 30,
              left: 25,
              child: DaysItem(day: days)),
          Positioned(
            top: 28,
            left: 244,
            child: Container(
                padding: EdgeInsets.all(2),
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                    color: AppColors.MainColor,
                    borderRadius: BorderRadius.circular(14)),
                child: SizedBox(
                    height: 16,
                    width: 16,
                    child: SvgPicture.asset(
                      "assets/svg/heart.svg",
                      fit: BoxFit.none,
                    ))),
          )
        ],
      ),
    );
  }
}
