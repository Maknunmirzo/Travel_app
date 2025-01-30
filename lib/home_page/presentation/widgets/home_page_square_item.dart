import 'package:flutter/material.dart';
import 'package:travel_app/utils/constans.dart';


class HomePageSquareItem extends StatelessWidget {
  const HomePageSquareItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color:AppColors.MainColor
      ),
    );
  }
}
