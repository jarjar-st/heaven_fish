import 'dart:math';

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
    ResponsiveGridBreakpoints.value = ResponsiveGridBreakpoints(
      xs: 890,
      sm: 1095,
      md: 1195,
      lg: 1440,
    );
    return CarouselSlider(
      carouselController: buttonCarouselController,
      options: CarouselOptions(
        viewportFraction: 1,
        height: 600,
        autoPlay: false,
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
                    : const EdgeInsets.symmetric(horizontal: 50.0),
                child: ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      lg: 1,
                      md: 1,
                      sm: 0,
                      xl: 1,
                      xs: 0,
                      child: Container(),
                    ),
                    ResponsiveGridCol(
                      lg: 4,
                      md: 4,
                      sm: 5,
                      xl: 4,
                      xs: 12,
                      child: Container(
                        height: (MediaQuery.of(context).size.width < 890)
                            ? 230
                            : 380,
                        child: (MediaQuery.of(context).size.width < 890)
                            ? ResponsiveGridRow(
                                children: [
                                  ResponsiveGridCol(
                                    child: Container(
                                      child: Image.asset(
                                        'assets/pez.png',
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
                                    child: Container(
                                      height: 70,
                                    ),
                                  ),
                                  ResponsiveGridCol(
                                    lg: 11,
                                    md: 11,
                                    sm: 11,
                                    xl: 11,
                                    xs: 11,
                                    child: Container(
                                      child: Image.asset(
                                        'assets/pez.png',
                                        height: 60,
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
                                    lg: 1,
                                    md: 0,
                                    sm: 0,
                                    xl: 1,
                                    xs: 1,
                                    child: Container(),
                                  ),
                                  ResponsiveGridCol(
                                    lg: 11,
                                    md: 12,
                                    sm: 12,
                                    xl: 11,
                                    xs: 11,
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
                                    lg: 1,
                                    md: 0,
                                    sm: 1,
                                    xl: 1,
                                    xs: 1,
                                    child: Container(),
                                  ),
                                  ResponsiveGridCol(
                                    lg: 11,
                                    md: 12,
                                    sm: 12,
                                    xl: 11,
                                    xs: 11,
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
                      md: 7,
                      sm: 7,
                      xl: 7,
                      xs: 12,
                      child: Container(
                        alignment: Alignment(0, 0),
                        child: Image.asset(
                          item,
                          fit: (MediaQuery.of(context).size.width < 890)
                              ? BoxFit.cover
                              : BoxFit.cover,
                          width: 700,
                          height: (MediaQuery.of(context).size.width < 890)
                              ? 280
                              : 380,
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

//     if (MediaQuery.of(context).size.width < 577) {
//       return CarouselSlider(
//         carouselController: buttonCarouselController,
//         options: CarouselOptions(
//           viewportFraction: 1,
//           height: 500,
//           autoPlay: true,
//         ),
//         items: [1, 2, 3, 4, 5].map((i) {
//           return Builder(
//             builder: (BuildContext context) {
//               return Stack(
//                 children: [
//                   Container(
//                     width: width,
//                     margin: const EdgeInsets.symmetric(horizontal: 50.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           'assets/pez.png',
//                           height: imageSize,
//                           color: const Color.fromARGB(255, 0, 102, 199),
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "FRESHNESS\nTHAT FALLS",
//                               style: TextStyle(
//                                 color: const Color.fromARGB(255, 0, 102, 199),
//                                 fontWeight: FontWeight.w100,
//                                 fontStyle: FontStyle.italic,
//                                 fontSize: fontSize,
//                               ),
//                             ),
//                             Text(
//                               "FROM ABOVE",
//                               style: TextStyle(
//                                 color: const Color.fromARGB(255, 0, 102, 199),
//                                 fontFamily: 'Aleo',
//                                 fontWeight: FontWeight.normal,
//                                 fontStyle: FontStyle.italic,
//                                 fontSize: fontSize,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             },
//           );
//         }).toList(),
//       );
//     } else {
//       return CarouselSlider(
//           carouselController: buttonCarouselController,
//           options: CarouselOptions(
//             viewportFraction: 1,
//             height: 500,
//             autoPlay: true,
//           ),
//           items: imgSlider);
//     }
//   }
// }

// final List<Widget> imgSlider = imgs
//     .map((item) => Builder(
//           builder: (BuildContext context) {
//             return Stack(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   margin: const EdgeInsets.symmetric(horizontal: 50.0),
//                   child: ResponsiveGridRow(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       ResponsiveGridCol(
//                         md: 4,
//                         sm: 4,
//                         xs: 6,
//                         child: Container(
//                           padding: const EdgeInsets.all(3),
//                           child: ResponsiveGridRow(
//                             children: [
//                               ResponsiveGridCol(
//                                 lg: 12,
//                                 child: Image.asset(
//                                   'assets/pez.png',
//                                   height: 50,
//                                   color: const Color.fromARGB(255, 0, 102, 199),
//                                 ),
//                               ),
//                               ResponsiveGridCol(
//                                 lg: 12,
//                                 child: const Text(
//                                   "FRESHNESS\nTHAT FALLS",
//                                   style: TextStyle(
//                                     color: Color.fromARGB(255, 0, 102, 199),
//                                     fontWeight: FontWeight.w100,
//                                     fontStyle: FontStyle.italic,
//                                     fontSize: 50,
//                                   ),
//                                 ),
//                               ),
//                               ResponsiveGridCol(
//                                 lg: 12,
//                                 child: const Text(
//                                   "FROM ABOVE",
//                                   style: TextStyle(
//                                     color: Color.fromARGB(255, 0, 102, 199),
//                                     fontFamily: 'Aleo',
//                                     fontWeight: FontWeight.normal,
//                                     fontStyle: FontStyle.italic,
//                                     fontSize: 50,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       ResponsiveGridCol(
//                         md: 8,
//                         sm: 8,
//                         xs: 6,
//                         child: Container(
//                           height: 350,
//                           child: Image.asset(
//                             item,
//                             height: 350,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           },
//         ))
//     .toList();
