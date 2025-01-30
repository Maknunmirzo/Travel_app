import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:travel_app/register/presentation/widgets/register_app_bar.dart';
import 'package:travel_app/register/presentation/widgets/register_button.dart';
import 'package:travel_app/utils/constans.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 83,
      height: 61,
      textStyle: TextStyle(
        fontSize: 24,
        fontFamily: "Urbanist",
        fontWeight: FontWeight.w700,
        color: Color(0xff4B4B4B),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffEEEEEE), width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: AppColors.MainColor, width: 1),
      ),
    );

    return Scaffold(
      appBar: RegisterAppBar(title: "Kodni Kiriting",route: "/",),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          spacing: 30,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            SvgPicture.asset(
              "assets/images/zafar.svg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              colorFilter: const ColorFilter.mode(Color(0xffFAFAFA), BlendMode.srcIn),
            ),
            Text(
              "Sms kodini kiriting",
              style: TextStyle(
                fontSize: 18,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.w400,
                color: Color(0xff4B4B4B),
              ),
            ),
            Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              length: 4,
              obscureText: true,
              obscuringWidget: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SvgPicture.asset("assets/svg/dot.svg"),
              ),
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              // separatorBuilder: (index) => SizedBox(width: 40),
            ),
            SizedBox(height: 50),
            GestureDetector(
                onTap: (){
                  context.go("/register");
                },
                child: RegisterButton(title: "Tasdiqlash",route: "/register",)),
          ],
        ),
      ),
    );
  }
}
