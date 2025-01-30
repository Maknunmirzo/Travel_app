import 'package:flutter/material.dart';


class PackageImages extends StatelessWidget {
  const PackageImages({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(image),
      height: 311,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}
