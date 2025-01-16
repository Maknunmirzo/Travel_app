import 'package:flutter/material.dart';
import 'package:travel_app/home_page/presentation/widgets/home_page_main_item.dart';
import 'package:travel_app/utils/constans.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.MainColor,
      body: Center(child: MainItem()),


    );
  }
}
