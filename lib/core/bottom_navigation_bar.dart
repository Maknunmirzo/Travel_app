import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/bottom_navigation_bar_item.dart';



class BottomNavigationBar1 extends StatelessWidget {
  const BottomNavigationBar1({super.key, required this.selected});

   final int selected;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
BottomNavigationBarItem1(image: "assets/svg/home.svg", label: "Home", selected: selected==0),
BottomNavigationBarItem1(image: "assets/svg/bag.svg", label: "Cart", selected: selected==1),
BottomNavigationBarItem1(image: "assets/svg/orders.svg", label: "Orders", selected: selected==2),
BottomNavigationBarItem1(image: "assets/svg/wallet.svg", label: "Wallet", selected: selected==3),
BottomNavigationBarItem1(image: "assets/svg/profile.svg", label: "Profile", selected: selected==4),  ]
      ),
    );
  }
}
