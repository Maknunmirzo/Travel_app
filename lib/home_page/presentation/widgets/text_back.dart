import 'package:flutter/material.dart';


class TextBack extends StatelessWidget {
  const TextBack({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
      style:TextStyle(
          fontSize: 18,
          fontFamily: "Urbanist",
          fontWeight: FontWeight.w700,
          color: Color(0xff4B4B4B)
      ),
    );
  }
}
