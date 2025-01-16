import 'package:flutter/material.dart';

import '../../../utils/constans.dart';


class DaysItem extends StatelessWidget {
  const DaysItem({super.key, required this.day});

  final String day;

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      width: 59,
      height: 21,
      decoration: BoxDecoration(
          color: AppColors.MainColor,
          borderRadius: BorderRadius.circular(6)
      ),
      child: Text(
        day,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          fontFamily: "Urbanist",


        ),
      ),
    );
  }
}
