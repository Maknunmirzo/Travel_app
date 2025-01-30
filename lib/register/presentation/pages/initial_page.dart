import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app/register/presentation/widgets/register_button.dart';
import 'package:travel_app/register/presentation/widgets/register_text_field.dart';

import '../../../utils/constans.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: SizedBox(
              height: 28,
              width: 28,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/svg/back-arrow.svg",
                  colorFilter:
                      ColorFilter.mode(AppColors.MainColor, BlendMode.srcIn),
                ),
                padding: EdgeInsets.zero,
              )),
          leadingWidth: 60),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          spacing: 30,
          children: [
            SizedBox(
              height: 70,
            ),
            SvgPicture.asset(
              "assets/images/zafar.svg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Color(0xffFAFAFA), BlendMode.srcIn),
            ),
            Text(
              "Ro’yxatdan o’tish",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Urbanist",
                  fontSize: 32),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  SvgPicture.asset(
                    "assets/svg/phone.svg",
                    width: 16,
                    height: 16,
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Telefon raqamingizni kiriting",
                          hintStyle: TextStyle(color: Color(0xff9E9E9E))),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              child: RegisterButton(
                title: "Ro'yhatdan o'tish",
                route: "/notice",
              ),
              onTap: () {
                context.go("/notice");
              },
            )
          ],
        ),
      ),
    );
  }
}
