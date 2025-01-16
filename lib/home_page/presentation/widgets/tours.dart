import 'package:flutter/material.dart';
import 'package:travel_app/home_page/presentation/widgets/excess_part.dart';
import 'package:travel_app/home_page/presentation/widgets/tours_bottom.dart';
import 'package:travel_app/home_page/presentation/widgets/tours_status.dart';
import 'package:travel_app/home_page/presentation/widgets/travel_content.dart';
import 'package:travel_app/utils/constans.dart';

class Tours extends StatelessWidget {
  const Tours(
      {super.key,
      required this.status,
      required this.price_now,
      required this.price_last,
      required this.contents});

  final String status;
  final int price_now, price_last;
  final List<String> contents;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        // alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8,vertical: 12),
            // height: 83,
            // width: 127,
            decoration: BoxDecoration(
              color: AppColors.MainColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "$price_now\$",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Urbanist",
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(width: 3,),
                        Text(
                          "$price_last\$",
                          style: TextStyle(
                              fontSize: 9,
                              fontFamily: "Urbanist",
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(191, 255, 255, 255),
                              decoration: TextDecoration.lineThrough
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 3,),
                        Text(
                          "Afzalliklari",
                          style: TextStyle(
                            fontSize: 7,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(191, 255, 255, 255),),
                        ),
                      ],
                    ),
                  ],
                ),
                TravelContent(part: contents[0],),
                Row(
                  children: [
                    TravelContent(part: contents[1],),
                    ExcessPart(count: contents.length-2)
                  ],
                )
              ]),
            ),
          ),
          Positioned(
              left: 23,
              top: -9,
              right: 23,

              child: ToursStatus(status: status)),
          Positioned(
              left: 0,
              right: 0,
              bottom: -3,
              child: ToursBottom()),

        ],
      ),
    );
  }
}


