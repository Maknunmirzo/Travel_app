import 'package:flutter/material.dart';

class OnboardingFirstPage extends StatelessWidget {
  const OnboardingFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image(
          image: AssetImage("assets/images/onboarding/onboarding_1.png"),
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 550,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black.withValues(alpha: 0.7), Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to 👋",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontFamily: "Urbanist",
                    fontWeight: FontWeight.w700),
              ),
              Text("AirTravels",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 64,
                    fontFamily: "Urbanist",
                    fontWeight: FontWeight.w900
                )),
              Text("The best furniture e-commerce app of the century for your daily needs!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Urbanist",
                      fontWeight: FontWeight.w600
                  )),
              SizedBox(height: 84,)
            ],
          ),
        )
      ],
    );
  }
}
