import 'package:flutter/material.dart';
import 'package:travel_app/utils/constans.dart';


class SquareItem extends StatelessWidget {
  const SquareItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color:AppColors.MainColor
      ),
    );
  }
}
