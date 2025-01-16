import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constans.dart';



class ToursStatus extends StatelessWidget {
  const ToursStatus({super.key, required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2,vertical: 2),
      // height: 29,
      // width: 108,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.MainColor, width: 2)),
      child: Center(
        child: Text(status,
          style: TextStyle(
              fontSize: 10,
              fontFamily: "Urbanist",
              fontWeight: FontWeight.w700,
              color: AppColors.MainColor
          ),
        ),
      ),
    );
  }
}
