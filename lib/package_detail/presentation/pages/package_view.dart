import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/core/bottom_navigation_bar.dart';
import 'package:travel_app/home_page/presentation/widgets/days_places.dart';
import 'package:travel_app/package_detail/data/models/package_detail_model.dart';
import 'package:travel_app/package_detail/data/repositories/package_detail_repository.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view_model.dart';
import 'package:travel_app/package_detail/presentation/widgets/features.dart';
import 'package:travel_app/package_detail/presentation/widgets/flight_item.dart';
import 'package:travel_app/package_detail/presentation/widgets/housing_item.dart';
import 'package:travel_app/package_detail/presentation/widgets/package_images.dart';
import 'package:travel_app/package_detail/presentation/widgets/package_round_item.dart';
import 'package:travel_app/package_detail/presentation/widgets/package_square_item.dart';
import 'package:travel_app/package_detail/presentation/widgets/package_text_back.dart';
import 'package:travel_app/package_detail/presentation/widgets/stays_item.dart';
import 'package:travel_app/package_detail/presentation/widgets/tariffs_item.dart';
import 'package:travel_app/package_detail/presentation/widgets/visit_item.dart';
import 'package:travel_app/utils/constans.dart';

class PackageView extends StatelessWidget {
  const PackageView({super.key, required this.viewModel});

  final PackageDetailViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        leading: SizedBox(
            height: 48,
            width: 48,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/svg/back-arrow.svg"),
              padding: EdgeInsets.zero,
            )),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar1(selected: 0),
      body: PackageBody(viewModel: viewModel),
    );
  }
}

class PackageBody extends StatefulWidget {
  const PackageBody({super.key, required this.viewModel});

  final PackageDetailViewModel viewModel;

  @override
  State<PackageBody> createState() => _PackageBodyState();
}

class _PackageBodyState extends State<PackageBody> {
  final controller = PageController();
  int currentIndex = 0;
  late int imagesCount = widget.viewModel.package.images.length;
  int currentDay = 1;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.viewModel,
      builder: (context, _) {
        if (widget.viewModel.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 311,
                    width: double.infinity,
                    child: PageView.builder(
                      onPageChanged: (index) => setState(() {
                        currentIndex = index;
                      }),
                      itemBuilder: (context, index) => PackageImages(
                          image: widget.viewModel.package.images[index]),
                      itemCount: imagesCount,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 160,
                    right: 160,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.linear,
                      height: 8,
                      width: 62,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          imagesCount,
                          (index) => (currentIndex % imagesCount == index)
                              ? PackageSquareItem()
                              : PackageRoundItem(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                      height: 88,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(1, 1)),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PackageTextBack(text: widget.viewModel.package.title),
                          Text(
                            widget.viewModel.package.description,
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w700,
                                color: Color(0xff4B4B4B)),
                          )
                        ],
                      ),
                    ),
                    Stays(ViewModel: widget.viewModel),
                    PackageTextBack(text: "Sayohat Tarkibi"),
                    Features(ViewModel: widget.viewModel),
                    PackageTextBack(text: "Sayohat kundaligi"),
                    // SizedBox(height: 10),
                    Container(
                      // height: 597,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black,
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(1, 1)),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          SizedBox(
                            height: 45,
                            child: RawScrollbar(
                              thumbVisibility: true,
                              controller: _scrollController,
                              thickness: 3,
                              // minOverscrollLength: 60,
                              minThumbLength: 60,
                              padding: EdgeInsets.only(top: 20),
                              thumbColor: AppColors.MainColor,
                              child: ListView.separated(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  onTap: () => setState(() {
                                    currentDay = index;
                                  }),
                                  child: Container(
                                    height: 45,
                                    alignment: Alignment.bottomCenter,
                                    width: 63,
                                    decoration: BoxDecoration(
                                        color: Color(0xff808080)
                                            .withValues(alpha: 0.2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2, vertical: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${widget.viewModel.package.calendar[index].day} Kun",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: "Urbanist",
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                            Text(
                                              "8avg",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontFamily: "Urbanist",
                                                fontWeight: FontWeight.w700,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                separatorBuilder: (context, index) => SizedBox(
                                  width: 10,
                                ),
                                itemCount:
                                    widget.viewModel.package.calendar.length,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15
                          ),
                          FlightItem(
                              flight: widget.viewModel.package
                                  .calendar[currentDay].activities[0]),
                          SizedBox(
                            height: 15
                          ),
                          HousingItem(
                              housing: widget.viewModel.package
                                  .calendar[currentDay].activities[1]),
                          SizedBox(height: 15),
                          VisitItem(
                              visit: widget.viewModel.package
                                  .calendar[currentDay].activities[2]),
                        ],
                      ),
                    ),
                    PackageTextBack(text: "Ta'riflar"),
                    SizedBox(height: 2),
                    TariffsItem(tariffs: widget.viewModel.package.tariffs)
                  ],
                ),
              )
            ],
          );
        }
      },
    );
  }
}
