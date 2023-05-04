// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:heaven_fish/providers/page_provider.dart';
import 'package:heaven_fish/ui/shared/custom_appbar.dart';
import 'package:heaven_fish/ui/views/about_view.dart';
import 'package:heaven_fish/ui/views/carousel_botton_view.dart';
import 'package:heaven_fish/ui/views/carousel_view.dart';
import 'package:heaven_fish/ui/views/impact_view.dart';
import 'package:heaven_fish/ui/views/origin_view.dart';
import 'package:heaven_fish/ui/views/shop_view.dart';
import 'package:heaven_fish/ui/views/trademark_view.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 225),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 130),
        child: CustomAppBar(),
      ),
      body: ListView(
        controller: pageProvider.scrollController,
        scrollDirection: Axis.vertical,
        children: [
          //*Carousel
          CarouselTopView(),
          const About(),
          const OriginView(),
          const TrademarkView(),
          const ImpactView(),
          const ShopView(),
          const CarouselBottomView(),
          const Footer(),
        ],
      ),
    );
  }
}

class CarouselTopView extends StatelessWidget {
  CarouselController controller = CarouselController();
  CarouselTopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomCarousel(
          controller: controller,
        ),
        Positioned(
          bottom: 400,
          left: -10,
          child: IconButton(
            onPressed: () {
              controller.previousPage();
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            iconSize: 40,
            color: const Color.fromARGB(255, 0, 102, 199),
          ),
        ),
        Positioned(
          bottom: 400,
          right: -10,
          child: IconButton(
            onPressed: () {
              controller.nextPage();
            },
            icon: const Icon(Icons.arrow_forward_ios_outlined),
            iconSize: 40,
            color: const Color.fromARGB(255, 0, 102, 199),
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
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: const Color.fromARGB(255, 0, 102, 199),
      child: Center(
        child: Image.asset(
          "assets/Recurso8.png",
          height: 150,
        ),
      ),
    );
  }
}
