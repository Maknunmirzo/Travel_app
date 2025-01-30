import 'package:flutter/material.dart';

class HomePageMainImage extends StatelessWidget {
  const HomePageMainImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(image),
      height: 120,
      width: 380,
      fit: BoxFit.cover,
    );
  }
}
