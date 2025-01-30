import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageTopItem extends StatelessWidget {
  const HomePageTopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 53,
          width: 326,
          decoration: BoxDecoration(
            color: Color(0xffF5F5F5),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset("assets/svg/search.svg"),
              Text(
                "Search",
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Urbanist",
                    fontWeight: FontWeight.w400,
                    color: Color(0xffBDBDBD)),
              ),
              SvgPicture.asset("assets/svg/filter.svg")
            ],
          )
        ),
        SvgPicture.asset("assets/svg/notifications.svg")
      ],
    );
  }
}
