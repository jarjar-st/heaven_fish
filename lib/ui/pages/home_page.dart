import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:heaven_fish/ui/shared/custom_appbar.dart';

import '../views/about_view.dart';

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
            Stack(
              children: [
                About(buttonCarouselController: buttonCarouselController),
                Positioned(
                  bottom: 300,
                  child: IconButton(
                    onPressed: () => buttonCarouselController.nextPage(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.linear),
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    color: const Color.fromARGB(255, 0, 102, 199),
                    iconSize: 60,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 300,
                  child: IconButton(
                    onPressed: () => buttonCarouselController.nextPage(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.linear),
                    icon: const Icon(Icons.arrow_forward_ios_outlined),
                    color: const Color.fromARGB(255, 0, 102, 199),
                    iconSize: 60,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
