import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/package_detail/data/models/tariff_model.dart';
import 'package:travel_app/package_detail/presentation/widgets/tarif_status.dart';
import 'package:travel_app/utils/constans.dart';

class TariffsItem extends StatefulWidget {
  const TariffsItem({super.key, required this.tariffs});

  final List<TariffModel> tariffs;

  @override
  State<TariffsItem> createState() => _TariffsItemState();
}

class _TariffsItemState extends State<TariffsItem> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 254,
          child: ListView.separated(
            shrinkWrap: true,
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 20),
            itemCount: widget.tariffs.length,
            itemBuilder: (context, index) => Stack(
              clipBehavior: Clip.none,
              children: [
                GestureDetector(
                  onTap: () => setState(() {
                    currentIndex = index;
                  }),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                    width: 180,
                    decoration: BoxDecoration(
                        color: AppColors.MainColor,
                        border: (currentIndex == index)
                            ? Border.all(color: Color(0xffE4DC19), width: 3)
                            : null,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${widget.tariffs[index].priceAfter}\$",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Urbanist",
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      "${widget.tariffs[index].priceBefore}\$",
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontFamily: "Urbanist",
                                          fontWeight: FontWeight.w600,
                                          color: Color.fromARGB(
                                              191, 255, 255, 255),
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "Afzalliklari",
                                      style: TextStyle(
                                        fontSize: 7,
                                        fontFamily: "Urbanist",
                                        fontWeight: FontWeight.w700,
                                        color:
                                            Color.fromARGB(191, 255, 255, 255),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          spacing: 6,
                          children: List.generate(
                            widget.tariffs[index].features.length,
                            (feature) => Row(
                              // mainAxisSize: MainAxisSize.max,
                              spacing: 10,
                              children: [
                                SizedBox(
                                  height: 18,
                                  width: 18,
                                  child: SvgPicture.asset(widget.tariffs[index]
                                      .features[feature].image as String),
                                ),
                                Text(
                                  "${widget.tariffs[index].features[feature].title} ",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: "Urbanist",
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: -15,
                    left: 30,
                    right: 30,
                    child: TarifStatus(status: widget.tariffs[index].title)),
                Positioned(
                  top: 5,
                  left: 3,
                  child: Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        color: Color(0xffE4DC19),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        )),
                    child: Center(
                      child: Text(
                        "${((widget.tariffs[index].priceBefore - widget.tariffs[index].priceAfter) / widget.tariffs[index].priceAfter * 100).toInt()}%",
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                    // child: ,
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 200,
        ),
        Container(
          height: 78,
          width: 380,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Color(0xffEEEEEE), width: 3),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Jami qiymat",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w500,
                        color: Color(0xff757575)),
                  ),
                  Text(
                    "${widget.tariffs[currentIndex].priceAfter}\$",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w700,
                        color: AppColors.MainColor),
                  ),
                ],
              ),
              Container(
                width: 245,
                height: 58,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(4, 8),
                          blurRadius: 24,
                          spreadRadius: 0,
                          color: Color(0xff10101040))
                    ],
                    color: AppColors.MainColor,
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Row(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        color: Colors.white,
                        "assets/svg/bag.svg",
                        width: 16,
                        height: 16,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        "Buyurtma berish",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
