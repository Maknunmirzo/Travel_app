import 'package:flutter/material.dart';


class HomePageRoundItem extends StatelessWidget {
  const HomePageRoundItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Color(0xffE0E0E0)
      ),
    );
  }
}
