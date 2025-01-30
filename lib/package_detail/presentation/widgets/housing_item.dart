import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/package_detail/data/models/activity_model.dart';
import 'package:travel_app/package_detail/data/models/feature_model.dart';
import 'package:travel_app/package_detail/presentation/widgets/package_bottom_item.dart';


class HousingItem extends StatelessWidget {
  const HousingItem({super.key, required this.housing});

  final ActivityModel housing;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: 284,
      padding: EdgeInsets.only(left: 52, right: 16, top: 12, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black,
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(1, 1)),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                housing.title,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
              ),
              Text(
                "${housing.time} am",
                style: TextStyle(
                    fontSize: 10,
                    fontFamily: "Urbanist",
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      "assets/images/offers/offers_2.jpg",
                      height: 68,
                      width: 77,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 68,
                    width: 77,
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.4), // Qora rangli overlay
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "${housing.field_1}",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w600,
                            color: Color(0xff000000)),
                      ),
                      SizedBox(width: 2,),
                      Row(
                   spacing: 2,
                        children: [
                          SvgPicture.asset("assets/svg/map-pin.svg"),
                          Text(
                            "150M",
                            style: TextStyle(
                                fontSize: 10,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w600,
                                color: Color(0xff000000)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 125,
                    child: Text(
                      // textAlign: TextAlign.start,
                      maxLines: 3,
                      "${housing.field_2}",
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 8,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.w700,
                          color: Color(0xff4B4B4B)),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width: 12,),
                      PackageBottomItem(),
                    ],
                  ),

                ],
              ),
              SizedBox(width: 20,),
            ],
          )
        ],
      ),
    );
  }
}
