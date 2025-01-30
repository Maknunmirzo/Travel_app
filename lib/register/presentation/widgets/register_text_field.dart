import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/utils/constans.dart';

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({super.key, required this.hintText});

  final String hintText;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
                fontSize: 14,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.w400,
                color: Color(0xff9E9E9E))),
      ),
    );
  }
}
