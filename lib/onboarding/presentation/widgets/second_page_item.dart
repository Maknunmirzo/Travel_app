// import 'package:flutter/material.dart';
// import 'package:travel_app/utils/constans.dart';
//
// class SecondPageItem extends StatelessWidget {
//   final PageController controller;
//   SecondPageItem({super.key, required this.index, required this.controller});
//
//   final List<String> texts = [
//     "We provide high quality products just for you",
//     "Your satisfaction is our number one priority",
//     "Let's fulfill your house needs with Funica right now!"
//   ];
//   final int index;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: 32, right: 24, bottom: 48, left: 24),
//       height: 370,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
//       ),
//       child: Column(
//         children: [
//           Text(
//             texts[index],
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 color: Colors.black,
//                 fontFamily: "Urbanist",
//                 fontWeight: FontWeight.w900,
//                 fontSize: 40),
//           ),
//           ElevatedButton(
//
//             onPressed: () {
//               print("nimadir");
//               controller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear);
//             },
//             style: ElevatedButton.styleFrom(
//               minimumSize: Size(double.infinity, 58),
//
//               elevation: 10,
//               shadowColor: Colors.black.withValues(alpha: 0.8),
//               backgroundColor: AppColors.MainColor,
//               padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(100),
//               ),
//             ),
//             child: Text(
//               (index != 2) ? "Keyingi" : "Boshlash",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontFamily: "Urbanist",
//                 fontWeight: FontWeight.w700,
//                 fontSize: 16,
//               ),
//             ),
//           )
//
//         ],
//       ),
//     );
//   }
// }
