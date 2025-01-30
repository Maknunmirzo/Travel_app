import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/bottom_navigation_bar.dart';
import 'package:travel_app/home_page/presentation/widgets/home_page_main_image.dart';
import 'package:travel_app/home_page/presentation/widgets/home_page_main_item.dart';
import 'package:travel_app/home_page/presentation/widgets/home_page_places.dart';
import 'package:travel_app/home_page/presentation/widgets/home_page_round_item.dart';
import 'package:travel_app/home_page/presentation/widgets/home_page_square_item.dart';
import 'package:travel_app/home_page/presentation/widgets/home_page_top_item.dart';
import 'package:travel_app/home_page/presentation/widgets/timer.dart';
import 'package:travel_app/utils/constans.dart';

class HomePage extends StatefulWidget {
 const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> mainitems = [
    MainItem(),
    MainItem(),
    MainItem(),
    MainItem(),
    MainItem(),
    MainItem(),
  ];

  final List<String> offers = [
    "assets/images/offers/offers_1.jpg",
    "assets/images/offers/offers_2.jpg",
    "assets/images/offers/offers_3.jpg",
    "assets/images/offers/offers_4.jpg",
    "assets/images/offers/offers_5.jpg",
    "assets/images/offers/offers_6.jpg",
    "assets/images/offers/offers_7.jpg",
    "assets/images/offers/offers_8.jpg",
    "assets/images/offers/offers_9.jpg"
  ];
  final List<Map<String,String>> places=[
    {
      "images":"assets/images/places/makka.png",
      "title":"Makka"
    },
    {
      "images":"assets/images/places/dubai.png",
      "title":"Dubai"
    },
    {
      "images":"assets/images/places/paris.png",
      "title":"Paris"
    },
    {
      "images":"assets/images/places/malayziya.png",
      "title":"Malayziya"
    }
  ];

   int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomePageTopItem(),
                SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                        height: 120,
                        width: 380,
                        child: PageView.builder(
                          onPageChanged: (index)=>setState(() {
                            currentIndex=index;
                          }),
                          // itemCount: offers.length,
                          itemBuilder: (context, index) =>
                              HomePageMainImage(image: offers[index%offers.length]),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 154,
                      right: 154,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        curve: Curves.linear,
                        height: 8,
                        width: 62,
                        decoration: BoxDecoration(
                            color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            offers.length,
                                (index) => (currentIndex % offers.length == index)
                                ? HomePageSquareItem()
                                : HomePageRoundItem(),
                          ),
                        ),

                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text("Mashxur Joylar",
                  style:TextStyle(
                      fontSize: 24,
                      fontFamily: "Urbanist",
                      fontWeight: FontWeight.w700,
                      color: Color(0xff4B4B4B)
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>HomePagePlaces(
                        image: places[index]["images"]!,
                         title: places[index]["title"]!,),
                      separatorBuilder: (context,index)=>SizedBox(width: 6,),
                      itemCount: places.length),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              height: 634,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      AppColors.MainColor,
                      Color(0xffF6980A),
                    ],
                    // stops: [0.2,0.8]
                    end: Alignment.centerRight,
                    begin: Alignment.centerLeft),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/svg/discount.svg"),
                            Column(
                              children: [
                                Text(
                                  "Shoshiling",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: "Urbanist",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                Text(
                                  "20% gacha chegirma",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Urbanist",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Timer(
                            day: 12,
                            hour: 24,
                            min: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 550,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => mainitems[index],
                      separatorBuilder: (context, index) => SizedBox(
                        width: 10,
                      ),
                      itemCount: mainitems.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
          MainItem()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar1(
        selected: 0,
      ),
    );
  }
}


