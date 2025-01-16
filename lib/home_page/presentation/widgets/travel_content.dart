import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constans.dart';


class TravelContent extends StatelessWidget {
  const TravelContent({super.key, required this.part});

  final String part;

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
              child: SvgPicture.asset("assets/svg/tick.svg",fit: BoxFit.none,),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child:     Text(part,
              style: TextStyle(
                  fontSize: 10,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w700,
                  color: AppColors.MainColor
              ),
            ),
          ),
        ],

      ),
    );
  }
}
