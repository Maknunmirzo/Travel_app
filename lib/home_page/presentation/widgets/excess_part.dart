import 'package:flutter/material.dart';

import '../../../utils/constans.dart';

class ExcessPart extends StatelessWidget {
  const ExcessPart({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      height: 25,
      width: 33,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.MainColor, width: 1),
      ),
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        height: 15,
        width: 29,
        decoration: BoxDecoration(
          color: AppColors.MainColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: Center(
          child: Text("$count+",
            style:TextStyle(
                fontSize: 10,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.w700,
                color: Colors.white
            ),
          ),
        ) ,
      ),
    );
  }
}
