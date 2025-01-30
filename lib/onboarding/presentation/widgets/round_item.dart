import 'package:flutter/material.dart';


class RoundItem extends StatelessWidget {
  const RoundItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color(0xffE0E0E0)
      ),
    );
  }
}
