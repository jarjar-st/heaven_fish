import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:heaven_fish/ui/shared/custom_appbar.dart';
import 'package:heaven_fish/ui/views/about_view.dart';
import 'package:heaven_fish/ui/views/carousel_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 225),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 180),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //*Carousel
            Stack(
              children: [
                CustomCarousel(
                  buttonCarouselController: buttonCarouselController,
                ),
                Positioned(
                  bottom: 150,
                  child: IconButton(
                    onPressed: () => buttonCarouselController.previousPage(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.linear),
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    color: const Color.fromARGB(255, 0, 102, 199),
                    iconSize: 60,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 150,
                  child: IconButton(
                    onPressed: () => buttonCarouselController.nextPage(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.linear),
                    icon: const Icon(Icons.arrow_forward_ios_outlined),
                    color: const Color.fromARGB(255, 0, 102, 199),
                    iconSize: 60,
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  left: 20,
                  child: Text(
                    "#HeavenFish",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      height: 0.1,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),
            const About(),
          ],
        ),
      ),
    );
  }
}
