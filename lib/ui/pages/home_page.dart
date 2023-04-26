import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:heaven_fish/providers/page_provider.dart';
import 'package:heaven_fish/ui/shared/custom_appbar.dart';
import 'package:heaven_fish/ui/views/about_view.dart';
import 'package:heaven_fish/ui/views/carousel_botton_view.dart';
import 'package:heaven_fish/ui/views/carousel_view.dart';
import 'package:heaven_fish/ui/views/impact_view.dart';
import 'package:heaven_fish/ui/views/origin_view.dart';
import 'package:heaven_fish/ui/views/shop_view.dart';
import 'package:heaven_fish/ui/views/trademark_view.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    CarouselController buttonCarouselController = CarouselController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 225),
      drawer: (MediaQuery.of(context).size.width < 622) ? CustomAppBar() : null,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 130),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        controller: pageProvider.scrollController,
        child: Column(
          children: [
            //*Carousel
            Stack(
              children: [
                CustomCarousel(
                  buttonCarouselController: buttonCarouselController,
                ),
                Positioned(
                  bottom: 250,
                  child: IconButton(
                    onPressed: () => buttonCarouselController.previousPage(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.linear),
                    icon: const Icon(Icons.arrow_back_ios_new_outlined),
                    color: const Color.fromARGB(255, 0, 102, 199),
                    iconSize: 40,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 250,
                  child: IconButton(
                    onPressed: () => buttonCarouselController.nextPage(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.linear),
                    icon: const Icon(Icons.arrow_forward_ios_outlined),
                    color: const Color.fromARGB(255, 0, 102, 199),
                    iconSize: 40,
                  ),
                ),
                const Positioned(
                  bottom: 100,
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
            const About(),
            const OriginView(),
            const TrademarkView(),
            const ImpactView(),
            const ShopView(),
            CarouselBottomView(),
          ],
        ),
      ),
    );
  }
}
