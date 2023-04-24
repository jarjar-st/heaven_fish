import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
    super.key,
    required this.buttonCarouselController,
  });

  final CarouselController buttonCarouselController;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      carouselController: buttonCarouselController,
      options: CarouselOptions(
        height: 430.0,
        viewportFraction: 1,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/pez.png',
                              height: 50,
                              color: const Color.fromARGB(255, 0, 102, 199),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "FRESHNESS\nTHAT FALLS",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 102, 199),
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 50,
                                  ),
                                ),
                                Text(
                                  "FROM ABOVE",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 0, 102, 199),
                                    fontFamily: 'Aleo',
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          "assets/Board.HeavenFish.Web.jpg",
                          fit: BoxFit.cover,
                        ),
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
  }
}
