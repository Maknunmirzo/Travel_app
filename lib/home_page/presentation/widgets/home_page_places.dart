import 'package:flutter/material.dart';


class HomePagePlaces extends StatelessWidget {
  const HomePagePlaces({super.key, required this.image, required this.title});

  final String image,title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(image),
            height: 52,
            width: 104,
            fit: BoxFit.cover,
          ),
        ),
        Text(title,
          style:TextStyle(
              fontSize: 16,
              fontFamily: "Urbanist",
              fontWeight: FontWeight.w600,
              color: Colors.white
          ),
        ),
      ],
    );
  }
}
