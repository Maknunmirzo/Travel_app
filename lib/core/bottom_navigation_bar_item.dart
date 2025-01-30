import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/utils/constans.dart';


class BottomNavigationBarItem1 extends StatelessWidget {
  const BottomNavigationBarItem1(
      {super.key, required this.image, required this.label, required this.selected});

  final String image, label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(image, colorFilter: (selected) ? ColorFilter.mode(
            AppColors.MainColor, BlendMode.srcIn):null),
        Text(label,
          style: TextStyle(
            color: (selected) ? AppColors.MainColor : Color(0xff9E9E9E),
            fontFamily: "Urbanist",
            fontWeight: (selected) ? FontWeight.w700 : FontWeight.w500,
          ),)
      ],
    );
  }
}
