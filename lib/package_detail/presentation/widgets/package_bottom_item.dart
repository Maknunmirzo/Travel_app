import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constans.dart';


class PackageBottomItem extends StatelessWidget {
  const PackageBottomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          height: 2.5,
          width: 87,
          decoration: BoxDecoration(
            color: Colors.black,
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
    );
  }
}
