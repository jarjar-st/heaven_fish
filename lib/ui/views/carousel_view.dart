import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

final List<String> imgs = [
  "anna-atkins-rNBaaxyeWWM-unsplash.jpg",
  "assets/Board.HeavenFish.Web.jpg",
  "hector-emilio-gonzalez-O0febF9UQro-unsplash.jpg",
  "aaron-burden-aHqNIrN5U1g-unsplash.jpg",
];

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
    Key? key,
    required this.buttonCarouselController,
  }) : super(key: key);

  final CarouselController buttonCarouselController;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final bool isSmallScreen = width < 979;
    final double imageSize = isSmallScreen ? 35 : 50;
    final double fontSize = isSmallScreen ? 35 : 50;

    if (MediaQuery.of(context).size.width < 577) {
      return CarouselSlider(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          viewportFraction: 1,
          height: 500,
          autoPlay: true,
        ),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Stack(
                children: [
                  Container(
                    width: width,
                    margin: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/pez.png',
                          height: imageSize,
                          color: const Color.fromARGB(255, 0, 102, 199),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "FRESHNESS\nTHAT FALLS",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 102, 199),
                                fontWeight: FontWeight.w100,
                                fontStyle: FontStyle.italic,
                                fontSize: fontSize,
                              ),
                            ),
                            Text(
                              "FROM ABOVE",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 0, 102, 199),
                                fontFamily: 'Aleo',
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                fontSize: fontSize,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        }).toList(),
      );
    } else {
      return CarouselSlider(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            viewportFraction: 1,
            height: 500,
            autoPlay: true,
          ),
          items: imgSlider);
    }
  }
}

final List<Widget> imgSlider = imgs
    .map((item) => Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: ResponsiveGridRow(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ResponsiveGridCol(
                        md: 4,
                        sm: 4,
                        xs: 6,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          child: ResponsiveGridRow(
                            children: [
                              ResponsiveGridCol(
                                lg: 12,
                                child: Image.asset(
                                  'assets/pez.png',
                                  height: 50,
                                  color: const Color.fromARGB(255, 0, 102, 199),
                                ),
                              ),
                              ResponsiveGridCol(
                                lg: 12,
                                child: const Text(
                                  "FRESHNESS\nTHAT FALLS",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 102, 199),
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 50,
                                  ),
                                ),
                              ),
                              ResponsiveGridCol(
                                lg: 12,
                                child: const Text(
                                  "FROM ABOVE",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 102, 199),
                                    fontFamily: 'Aleo',
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ResponsiveGridCol(
                        md: 8,
                        sm: 8,
                        xs: 6,
                        child: Container(
                          height: 350,
                          child: Image.asset(
                            item,
                            height: 350,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ))
    .toList();
