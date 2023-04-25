import 'package:flutter/material.dart';

class TrademarkView extends StatelessWidget {
  const TrademarkView({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.width > 706) {
      return Container(
        width: double.infinity,
        height: 250,
        color: const Color.fromARGB(255, 0, 102, 199),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('IMG_1159.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "TRADEMARK",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Aleo',
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Yoro's Lluvia de Peces (Fish Rain) is a meterological phenomenon that"
                        "\noccurs annualy in the town of Yoro, Honduras, where it rains fish from the"
                        "\nsky. The event, one of Honduras'wonders, is believed to be a miraculous act"
                        "\nthat brings good luck and prosperity to the community."
                        "\n\nWhile the scientific explanation behind the phenomenon is unclear, it's"
                        "\nbelieved that the fish are lifted from nearby bodies of water and transported"
                        "\nby strong winds before falling bac to the ground during rainfall.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    } else if (MediaQuery.of(context).size.width <= 706) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        color: const Color.fromARGB(255, 0, 102, 199),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              "TRADEMARK",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Aleo',
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
                fontSize: 30,
              ),
            ),
            Text(
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
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: double.infinity,
        height: 250,
        color: const Color.fromARGB(255, 0, 102, 199),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('IMG_1159.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "TRADEMARK",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Aleo',
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Yoro's Lluvia de Peces (Fish Rain) is a meterological phenomenon that"
                        "\noccurs annualy in the town of Yoro, Honduras, where it rains fish from the"
                        "\nsky. The event, one of Honduras'wonders, is believed to be a miraculous act"
                        "\nthat brings good luck and prosperity to the community."
                        "\n\nWhile the scientific explanation behind the phenomenon is unclear, it's"
                        "\nbelieved that the fish are lifted from nearby bodies of water and transported"
                        "\nby strong winds before falling bac to the ground during rainfall.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset(
                      'assets/pez.png',
                      height: 50,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
}
