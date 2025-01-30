import 'package:flutter/material.dart';




class PackageSquareItem extends StatelessWidget {
  const PackageSquareItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 32,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color:Color(0xffFAFAFA)
      ),
    );
  }
}
