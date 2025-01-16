import 'package:flutter/material.dart';

import 'package:travel_app/home_page/presentation/widgets/days_places.dart';
import 'package:travel_app/home_page/presentation/widgets/excess_part.dart';
import 'package:travel_app/home_page/presentation/widgets/main_item_image.dart';
import 'package:travel_app/home_page/presentation/widgets/text_back.dart';
import 'package:travel_app/home_page/presentation/widgets/tours.dart';
import 'package:travel_app/home_page/presentation/widgets/travel_content.dart';
import 'package:travel_app/utils/constans.dart';

class MainItem extends StatelessWidget {
   MainItem({super.key});

 late List<Map<String, dynamic>> toursData = [
    {
      "status": "Ekonom",
      "price_now": 1200,
      "price_last": 1300,
      "contents": [
        "Transport xizmati",
        "Sug'urta",
        "cdddc,",
        "cdkmmkcdmkcd",
        "cddcdcdcdc",
      ],
    },
    {
      "status": "Ekonom",
      "price_now": 1200,
      "price_last": 1300,
      "contents": [
        "Transport xizmati",
        "Sug'urta",
        "cdddc,",
        "cdkmmkcdmkcd",
        "cddcdcdcdc",
      ],
    },
   {
     "status": "Ekonom",
     "price_now": 1200,
     "price_last": 1300,
     "contents": [
       "Transport xizmati",
       "Sug'urta",
       "cdddc,",
       "cdkmmkcdmkcd",
       "cddcdcdcdc",
     ],
   },
   {
     "status": "Ekonom",
     "price_now": 1200,
     "price_last": 1300,
     "contents": [
       "Transport xizmati",
       "Sug'urta",
       "cdddc,",
       "cdkmmkcdmkcd",
       "cddcdcdcdc",
     ],
   },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 302,
      height: 529,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xff4B4B4B80), width: 1),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          MainItemImage(
            image: "assets/images/places/makka.png",
            firstDay: "14 okt",
            endDay: "27 okt",
            days: "14 kun",
          ),
          TextBack(text: "Umra Safari"),
          Row(
            children: [
              DaysPlaces(place: "Madinada", days: 10),
              SizedBox(
                width: 5,
              ),
              DaysPlaces(place: "Makkada", days: 5),
            ],
          ),
          TextBack(text: "Sayohat tarkibi"),
          Row(
            spacing: 7,
            children: [
              TravelContent(part: "Sugurta"),
              TravelContent(part: "Chipta"),
              TravelContent(part: "Viza"),
              ExcessPart(count: 2)
            ],
          ),
          TextBack(text: "Tariflar"),
          SizedBox(
          height: 109,
            child: ListView.separated(
              // clipBehavior: Clip.antiAliasWithSaveLayer,
              shrinkWrap: true,
              separatorBuilder: (context, index) => SizedBox(width: 10),
              scrollDirection: Axis.horizontal,
              itemCount: toursData.length,
              itemBuilder: (context, index) {
                final tour = toursData[index];
                return Tours(
                  status: tour["status"],
                  price_now: tour["price_now"],
                  price_last: tour["price_last"],
                  contents: List<String>.from(tour["contents"]),
                );
              },
            ),
          ),
          Container(
            height: 34,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.MainColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
              "Batafsil..."  ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                    fontFamily: "Urbanist",
                  fontWeight: FontWeight.w700
                ),

              ),
            ),
          )

        ],
      ),
    );
  }
}
