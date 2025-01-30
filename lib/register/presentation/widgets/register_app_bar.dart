import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app/utils/constans.dart';

class RegisterAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RegisterAppBar({super.key, required this.title, required this.route});

  final String title,route;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: "Urbanist",
            fontSize: 24),
      ),
      leading: SizedBox(
          height: 28,
          width: 28,
          child: IconButton(
            onPressed: () {
              context.go(route);
            },
            icon: SvgPicture.asset(
              "assets/svg/back-arrow.svg",
              colorFilter:
                  ColorFilter.mode(AppColors.MainColor, BlendMode.srcIn),
            ),
            padding: EdgeInsets.zero,
          )),
      leadingWidth: 60,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
