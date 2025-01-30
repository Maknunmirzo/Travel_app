import 'package:flutter/material.dart';
import 'package:travel_app/onboarding/presentation/pages/onboarding_first_page.dart';
import 'package:travel_app/onboarding/presentation/pages/onboarding_second_page.dart';

class OnboardingPages extends StatelessWidget {
  OnboardingPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnboardingFirstPage(),
          OnboardingSecondPage(),
        ],
      ),
    );
  }
}
