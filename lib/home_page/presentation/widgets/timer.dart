import 'package:flutter/material.dart';


class Timer extends StatelessWidget {
  const Timer({super.key, required this.day, required this.hour, required this.min});
  final int day,hour,min;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 3,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 37,
          width: 28,
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.white,width: 0.5)
          ),
          child: Center(
            child: Text(
              "$day",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withValues(alpha: 0.7,)),
            ),
          ),
        ),
        Text(
          ":",
          style: TextStyle(
              fontSize: 20,
              fontFamily: "Urbanist",
              fontWeight: FontWeight.w700,
              color: Colors.black.withValues(alpha: 0.7,)),
        ),
        Container(
          height: 37,
          width: 28,
          decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white,width: 0.5)
          ),
          child: Center(
            child: Text(
              "$hour",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withValues(alpha: 0.7,)),
            ),
          ),
        ),
        Text(
          ":",
          style: TextStyle(
              fontSize: 2,
              fontFamily: "Urbanist",
              fontWeight: FontWeight.w700,
              color: Colors.black.withValues(alpha: 0.7,)),
        ),
        Container(
          height: 37,
          width: 28,
          decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.white,width: 0.5)
          ),
          child: Center(
            child: Text(
              "$min",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.w700,
                  color: Colors.black.withValues(alpha: 0.7,)),
            ),
          ),
        ),
      ],

    );
  }
}
