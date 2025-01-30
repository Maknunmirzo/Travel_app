import 'package:flutter/material.dart';
import 'package:travel_app/onboarding/presentation/widgets/round_item.dart';
import 'package:travel_app/onboarding/presentation/widgets/second_page_item.dart';
import 'package:travel_app/onboarding/presentation/widgets/square_item.dart';

import '../../../utils/constans.dart';

class OnboardingSecondPage extends StatefulWidget {
  const OnboardingSecondPage({super.key});

  @override
  State<OnboardingSecondPage> createState() => _OnboardingSecondPageState();
}

class _OnboardingSecondPageState extends State<OnboardingSecondPage> {
  int currentIndex = 0;

  final List<String> texts = ["We provide high quality products just for you", "Your satisfaction is our number one priority", "Let's fulfill your house needs with Funica right now!"];
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          controller: controller,
          onPageChanged: (index) => setState(() {
            currentIndex = index;
          }),
          children: [
            Image(
              image: AssetImage("assets/images/onboarding/onboarding_2.png"),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Image(
              image: AssetImage("assets/images/onboarding/onboarding_3.png"),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Image(
              image: AssetImage("assets/images/onboarding/onboarding_4.png"),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 32, right: 24, bottom: 45, left: 24),
          height: 375,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                texts[currentIndex],
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontFamily: "Urbanist", fontWeight: FontWeight.w900, fontSize: 40),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                curve: Curves.linear,
                height: 8,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.transparent
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              (currentIndex==0)? SquareItem():RoundItem(),
              (currentIndex==1)? SquareItem():RoundItem(),
              (currentIndex==2)? SquareItem():RoundItem(),
            ],

                ),
              ),
              SizedBox(height: 3,),
              ElevatedButton(
                onPressed: () {
                  controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 58),
                  elevation: 10,
                  shadowColor: Colors.black.withValues(alpha: 0.8),
                  backgroundColor: AppColors.MainColor,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: Text(
                  (currentIndex != 2) ? "Keyingi" : "Boshlash",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Urbanist",
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
