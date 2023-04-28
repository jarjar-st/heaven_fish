import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/page_provider.dart';

class ImpactView extends StatelessWidget {
  const ImpactView({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    // if (MediaQuery.of(context).size.width < 1000 &&
    //     MediaQuery.of(context).size.width > 768) {
    //   return Container(
    //     width: double.infinity,
    //     height: 450,
    //     color: const Color.fromARGB(255, 0, 102, 199),
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       children: [
    //         Expanded(
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: const [
    //                   Text(
    //                     "ORIGIN",
    //                     style: TextStyle(
    //                       color: Colors.white,
    //                       fontFamily: 'Aleo',
    //                       fontWeight: FontWeight.normal,
    //                       fontStyle: FontStyle.italic,
    //                       fontSize: 30,
    //                     ),
    //                   ),
    //                   Text(
    //                     "Yoro's Lluvia de Peces (Fish Rain) is a meterological phenomenon that"
    //                     "\noccurs annualy in the town of Yoro, Honduras, where it rains fish from the"
    //                     "\nsky. The event, one of Honduras'wonders, is believed to be a miraculous act"
    //                     "\nthat brings good luck and prosperity to the community."
    //                     "\n\nWhile the scientific explanation behind the phenomenon is unclear, it's"
    //                     "\nbelieved that the fish are lifted from nearby bodies of water and transported"
    //                     "\nby strong winds before falling bac to the ground during rainfall.",
    //                     style: TextStyle(
    //                       color: Colors.white,
    //                       fontSize: 11,
    //                       fontWeight: FontWeight.w100,
    //                       fontStyle: FontStyle.italic,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //         Expanded(
    //           child: Image.asset(
    //             "assets/hector-emilio-gonzalez-O0febF9UQro-unsplash.jpg",
    //             fit: BoxFit.cover,
    //             height: 450,
    //           ),
    //         ),
    //       ],
    //     ),
    //   );
    // } else
    if (MediaQuery.of(context).size.width <= 768) {
      return Container(
        width: double.infinity,
        height: 970,
        color: const Color.fromARGB(255, 0, 102, 199),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: FadeInRight(
                duration: const Duration(milliseconds: 1600),
                animate:
                    (pageProvider.getPageIndex('impact') == 4) ? true : false,
                child: const Text(
                  "IMPACT",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Aleo',
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FadeInRight(
                duration: const Duration(milliseconds: 1600),
                animate:
                    (pageProvider.getPageIndex('impact') == 4) ? true : false,
                child: const Text(
                  "Yoro's Lluvia de Peces (Fish Rain) is a meterological phenomenon that"
                  "occurs annualy in the town of Yoro, Honduras, where it rains fish from the"
                  "sky. The event, one of Honduras'wonders, is believed to be a miraculous act"
                  "that brings good luck and prosperity to the community."
                  "\n\nWhile the scientific explanation behind the phenomenon is unclear, it's"
                  "believed that the fish are lifted from nearby bodies of water and transported"
                  "by strong winds before falling bac to the ground during rainfall.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: FadeInRight(
                duration: const Duration(milliseconds: 1600),
                animate:
                    (pageProvider.getPageIndex('impact') == 4) ? true : false,
                child: Image.asset(
                  'assets/pez.png',
                  height: 50,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              "assets/oziel-gomez-iL-nzcmcnWc-unsplash.jpg",
              fit: BoxFit.cover,
              height: 450,
              width: double.infinity,
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 0, 102, 199),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FadeInRight(
                                duration: const Duration(milliseconds: 1600),
                                animate:
                                    (pageProvider.getPageIndex('impact') == 4)
                                        ? true
                                        : false,
                                child: const Text(
                                  "IMPACT",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Aleo',
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FontStyle.italic,
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              FadeInRight(
                                duration: const Duration(milliseconds: 1600),
                                animate:
                                    (pageProvider.getPageIndex('impact') == 4)
                                        ? true
                                        : false,
                                child: const Text(
                                  "Yoro's Lluvia de Peces (Fish Rain) is a meterological phenomenon that"
                                  "occurs annualy in the town of Yoro, Honduras, where it rains fish from the"
                                  "sky. The event, one of Honduras'wonders, is believed to be a miraculous act"
                                  "that brings good luck and prosperity to the community."
                                  "\nWhile the scientific explanation behind the phenomenon is unclear, it's"
                                  "believed that the fish are lifted from nearby bodies of water and transported"
                                  "by strong winds before falling bac to the ground during rainfall.",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w100,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: FadeInRight(
                          delay: const Duration(milliseconds: 800),
                          duration: const Duration(milliseconds: 1600),
                          animate: (pageProvider.getPageIndex('impact') == 4)
                              ? true
                              : false,
                          child: Image.asset(
                            'assets/pez.png',
                            height: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 300,
                    width: 500,
                    child: Image.asset(
                      "assets/oziel-gomez-iL-nzcmcnWc-unsplash.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 11),
          ],
        ),
      );
    }
  }
}
