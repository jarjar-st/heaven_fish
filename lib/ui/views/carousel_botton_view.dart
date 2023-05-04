import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

final List<String> imgs2 = [
  "anna-atkins-rNBaaxyeWWM-unsplash.jpg",
  "assets/Board.HeavenFish.Web.jpg",
  "hector-emilio-gonzalez-O0febF9UQro-unsplash.jpg",
  "aaron-burden-aHqNIrN5U1g-unsplash.jpg",
  "IMG_1159.jpg",
  "oziel-gomez-iL-nzcmcnWc-unsplash.jpg",
];
// final List<Widget> Slider = imgs2
//     .map((item) => Container(
//           color: Colors.grey,
//           margin: EdgeInsets.symmetric(horizontal: 10),
//           child: Image.asset(
//             item,
//             fit: BoxFit.cover,
//           ),
//         ))
//     .toList();

class CarouselBottomView extends StatelessWidget {
  const CarouselBottomView({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 849 &&
        MediaQuery.of(context).size.width > 427) {
      return ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            child: Container(
              color: Colors.white,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  autoPlay: true,
                ),
                itemCount: (imgs2.length / 2).round(),
                itemBuilder: (context, index, realIdx) {
                  final int first = index * 2;
                  final int second = first + 1;
                  return Row(
                    children: [first, second].map((idx) {
                      return Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          child: Image.asset(
                            imgs2[idx],
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            height: 300,
                          ),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ),
          ResponsiveGridCol(
            child: Container(
              color: Colors.white,
              height: 30,
            ),
          ),
          ResponsiveGridCol(
            child: Container(
              color: Colors.white,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(milliseconds: 5000),
                ),
                itemCount: (imgs2.length / 2).round(),
                itemBuilder: (context, index, realIdx) {
                  final int first = index * 2;
                  final int second = first + 1;
                  return Row(
                    children: [first, second].map((idx) {
                      return Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          child: Image.asset(
                            imgs2[idx],
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            height: 300,
                          ),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ),
        ],
      );
    }
    if (MediaQuery.of(context).size.width < 428) {
      return ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            child: Container(
              color: Colors.white,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  autoPlay: true,
                ),
                itemCount: imgs2.length,
                itemBuilder: (context, index, realIdx) {
                  return Row(
                    children: [index].map((idx) {
                      return Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          child: Image.asset(
                            imgs2[idx],
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            height: 300,
                          ),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ),
          ResponsiveGridCol(
            child: Container(
              color: Colors.white,
              height: 30,
            ),
          ),
          ResponsiveGridCol(
            child: Container(
              color: Colors.white,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(milliseconds: 5000),
                ),
                itemCount: imgs2.length,
                itemBuilder: (context, index, realIdx) {
                  return Row(
                    children: [index].map((idx) {
                      return Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          child: Image.asset(
                            imgs2[idx],
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            height: 300,
                          ),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ),
        ],
      );
    } else {
      return ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            child: Container(
              color: Colors.white,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  autoPlay: true,
                ),
                itemCount: (imgs2.length / 3).round(),
                itemBuilder: (context, index, realIdx) {
                  final int first = index * 3;
                  final int second = first + 1;
                  final int third = second + 1;
                  return Row(
                    children: [first, second, third].map((idx) {
                      return Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          child: Image.asset(
                            imgs2[idx],
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            height: 300,
                          ),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ),
          ResponsiveGridCol(
            child: Container(
              color: Colors.white,
              height: 30,
            ),
          ),
          ResponsiveGridCol(
            child: Container(
              color: Colors.white,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 300,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  autoPlay: true,
                  autoPlayInterval: const Duration(milliseconds: 5000),
                ),
                itemCount: (imgs2.length / 3).round(),
                itemBuilder: (context, index, realIdx) {
                  final int first = index * 3;
                  final int second = first + 1;
                  final int third = second + 1;
                  return Row(
                    children: [first, second, third].map((idx) {
                      return Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 1),
                          child: Image.asset(
                            imgs2[idx],
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            height: 300,
                          ),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ),
        ],
      );
    }
  }
}
