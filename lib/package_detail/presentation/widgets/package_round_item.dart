import 'package:flutter/material.dart';


class PackageRoundItem extends StatelessWidget {
  const PackageRoundItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color:Color(0xffE0E0E0)
      ),
    );
  }
}
