import 'package:flutter/material.dart';
import 'package:travel_app/package_detail/data/models/activity_model.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view_model.dart';

import '../../../utils/constans.dart';

class FlightItem extends StatelessWidget {
  const FlightItem({
    super.key,
    required this.flight,
  });

  final ActivityModel flight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123,
      width: 284,
      padding: EdgeInsets.only(left: 52, right: 16, top: 12, bottom: 12),
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
                flight.title,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w700,
                  color: Color(0xff000000),
                ),
              ),
              Text(
                "${flight.time} am",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Qayerdan",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Urbanist",
                      fontWeight: FontWeight.w600,
                      color: Color(0xffC4C4C4),
                    ),
                  ),
                  Text(
                    "Qayerga",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Urbanist",
                      fontWeight: FontWeight.w600,
                      color: Color(0xffC4C4C4),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${flight.field_1}",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                  Text(
                    "${flight.field_2}",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w700,
                        color: Color(0xff000000)),
                  ),
                ],
              ),
              SizedBox(width: 10,)
            ],
          ),

        ],
      ),
    );
  }
}
