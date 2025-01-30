import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app/utils/constans.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key, required this.title, required this.route});

  final String title,route;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            iconColor: AppColors.MainColor,
            elevation: 5,
            backgroundColor: AppColors.MainColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
        ),
        onPressed: (
            ) {
          context.go(route);
        },
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontFamily: "Urbanist",
              fontSize: 16),
        ),
      ),
    );
  }
}
