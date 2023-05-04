// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  final CarouselController controller;
  const CustomCarousel({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveGridBreakpoints.value = ResponsiveGridBreakpoints(
      xs: 890,
      sm: 1095,
      md: 1195,
      lg: 1440,
    );
    return CarouselSlider(
      carouselController: controller,
      options: CarouselOptions(
        viewportFraction: 1,
        height: 600,
        autoPlay: true,
      ),
      items: imgSlider,
    );
  }
}

final List<Widget> imgSlider = imgs
    .map(
      (item) => Builder(
        builder: (BuildContext context) {
          return Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: (MediaQuery.of(context).size.width < 427)
                    ? null
                    : const EdgeInsets.symmetric(horizontal: 30.0),
                child: ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      lg: 0,
                      md: 0,
                      sm: 0,
                      xl: 1,
                      xs: 0,
                      child: Container(),
                    ),
                    ResponsiveGridCol(
                      lg: 5,
                      md: 4,
                      sm: 5,
                      xl: 4,
                      xs: 12,
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        height: (MediaQuery.of(context).size.width < 890)
                            ? 230
                            : 380,
                        child: (MediaQuery.of(context).size.width < 890)
                            ? ResponsiveGridRow(
                                children: [
                                  ResponsiveGridCol(
                                    // ignore: avoid_unnecessary_containers
                                    child: Container(
                                      child: Image.asset(
                                        'assets/Recurso7.png',
                                        height:
                                            (MediaQuery.of(context).size.width <
                                                    427)
                                                ? 30
                                                : 50,
                                        color: Colors.red,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                  ),
                                  ResponsiveGridCol(
                                    // ignore: avoid_unnecessary_containers
                                    child: Container(
                                      child: Text(
                                        "FRESHNESS\nTHAT FALLS",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 0, 102, 199),
                                          fontWeight: FontWeight.w100,
                                          fontStyle: FontStyle.italic,
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  330)
                                              ? 40
                                              : 50,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  ResponsiveGridCol(
                                    // ignore: avoid_unnecessary_containers
                                    child: Container(
                                      child: Text(
                                        "FROM ABOVE",
                                        style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 0, 102, 199),
                                          fontFamily: 'Aleo',
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic,
                                          fontSize: (MediaQuery.of(context)
                                                      .size
                                                      .width <
                                                  330)
                                              ? 40
                                              : 50,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : ResponsiveGridRow(
                                children: [
                                  ResponsiveGridCol(
                                    lg: 12,
                                    md: 12,
                                    sm: 12,
                                    xl: 12,
                                    xs: 0,
                                    child: Container(),
                                  ),
                                  ResponsiveGridCol(
                                    lg: 11,
                                    md: 11,
                                    sm: 11,
                                    xl: 11,
                                    xs: 11,
                                    // ignore: avoid_unnecessary_containers
                                    child: Container(
                                      child: Image.asset(
                                        'assets/Recurso7.png',
                                        height: 90,
                                        color: Colors.red,
                                        alignment: Alignment.topRight,
                                      ),
                                    ),
                                  ),
                                  ResponsiveGridCol(
                                    lg: 1,
                                    md: 1,
                                    sm: 1,
                                    xl: 1,
                                    xs: 1,
                                    child: Container(),
                                  ),
                                  ResponsiveGridCol(
                                    lg: (MediaQuery.of(context).size.width <
                                            920)
                                        ? 0
                                        : 1,
                                    md: 0,
                                    sm: 0,
                                    xl: 1,
                                    xs: 1,
                                    child: Container(),
                                  ),
                                  ResponsiveGridCol(
                                    lg: (MediaQuery.of(context).size.width <
                                            920)
                                        ? 12
                                        : 11,
                                    md: 12,
                                    sm: 12,
                                    xl: 11,
                                    xs: 11,
                                    // ignore: avoid_unnecessary_containers
                                    child: Container(
                                      child: const Text(
                                        "FRESHNESS\nTHAT FALLS",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 0, 102, 199),
                                          fontWeight: FontWeight.w100,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ResponsiveGridCol(
                                    lg: (MediaQuery.of(context).size.width <
                                            920)
                                        ? 0
                                        : 1,
                                    md: 0,
                                    sm: 0,
                                    xl: 1,
                                    xs: 1,
                                    child: Container(),
                                  ),
                                  ResponsiveGridCol(
                                    lg: (MediaQuery.of(context).size.width <
                                            920)
                                        ? 12
                                        : 11,
                                    md: 12,
                                    sm: 12,
                                    xl: 11,
                                    xs: 11,
                                    // ignore: avoid_unnecessary_containers
                                    child: Container(
                                      child: const Text(
                                        "FROM ABOVE",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 0, 102, 199),
                                          fontFamily: 'Aleo',
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                    ResponsiveGridCol(
                      lg: 7,
                      md: 8,
                      sm: 7,
                      xl: 7,
                      xs: 12,
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                        child: Image.asset(
                          item,
                          fit: (MediaQuery.of(context).size.width < 890)
                              ? BoxFit.contain
                              : BoxFit.cover,
                          width: 700,
                          height: (MediaQuery.of(context).size.width < 890)
                              ? 280
                              : 450,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    )
    .toList();

//     