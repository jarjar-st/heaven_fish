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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 225),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 130),
        child: CustomAppBar(),
      ),
      body: ListView(
        controller: pageProvider.scrollController,
        scrollDirection: Axis.vertical,
        children: const [
          //*Carousel
          CarouselTopView(),
          About(),
          OriginView(),
          TrademarkView(),
          ImpactView(),
          ShopView(),
          CarouselBottomView(),
        ],
      ),
    );
  }
}

class CarouselTopView extends StatelessWidget {
  const CarouselTopView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        CustomCarousel(),
        Positioned(
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
