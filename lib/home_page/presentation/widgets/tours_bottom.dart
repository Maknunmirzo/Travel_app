import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constans.dart';

class ToursBottom extends StatelessWidget {
  const ToursBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 1,
            width: 64,
            decoration: BoxDecoration(
                color: AppColors.MainColor,
                border: Border.all(color: Colors.white, width: 1),

            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Color(0xff069C57), width: 1),
              ),
              child: Center(
                child: SizedBox(
                  // height: 12,
                  // width: 12,
                  child: SvgPicture.asset(
                    "assets/svg/down-arrow.svg",
                    fit: BoxFit.fill,
                  ),
                ),
              )),

        ],
      ),
    );
  }
}
