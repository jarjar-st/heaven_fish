import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 1000 &&
        MediaQuery.of(context).size.width > 706) {
      return Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 0, 102, 199),
        child: CustomPaint(
          painter: MyPainter(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "HEAVEN",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 102, 199),
                  fontFamily: 'Aleo',
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  height: 0.1,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "FROM",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      fontSize: 6,
                    ),
                  ),
                  Text(
                    "FISH",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "YORO",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      fontSize: 6,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        "WHATS IS\nTHE LLUVIA\nDE PECES?",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Aleo',
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
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
                      ),
                    ),
                    Expanded(
                      child: Text(
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
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 45),
            ],
          ),
        ),
      );
    } else if (MediaQuery.of(context).size.width <= 706) {
      return Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 0, 102, 199),
        child: CustomPaint(
          painter: MyPainter(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "HEAVEN",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 102, 199),
                  fontFamily: 'Aleo',
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  height: 0.1,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "FROM",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      fontSize: 6,
                    ),
                  ),
                  Text(
                    "FISH",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "YORO",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      fontSize: 6,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "WHATS IS THE LLUVIA DE PECES?",
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
                      "by strong winds before falling bac to the ground during rainfall."
                      "\nnYoro's Lluvia de Peces (Fish Rain) is a meterological phenomenon that"
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
              ),
              const SizedBox(height: 45),
            ],
          ),
        ),
      );
    } else {
      return Container(
        width: double.infinity,
        color: const Color.fromARGB(255, 0, 102, 199),
        child: CustomPaint(
          painter: MyPainter(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "HEAVEN",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 102, 199),
                  fontFamily: 'Aleo',
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                  height: 0.1,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "FROM",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      fontSize: 6,
                    ),
                  ),
                  Text(
                    "FISH",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "YORO",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.italic,
                      fontSize: 6,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        "WHATS IS\nTHE LLUVIA\nDE PECES?",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Aleo',
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.italic,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Text(
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Image.asset(
                        'assets/pez.png',
                        height: 50,
                        color: Colors.white,
                      ),
                    ),
                    const Expanded(
                      child: Text(
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
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 45),
            ],
          ),
        ),
      );
    }
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    paint.color = const Color.fromARGB(255, 225, 225, 225);
    path.moveTo((size.width < 594) ? size.width * 0.37 : size.width * 0.40, 0);
    path.lineTo(size.width * 0.5,
        (size.height > 594) ? size.height * 0.048 : size.height * 0.09);
    path.lineTo((size.width < 594) ? size.width * 0.63 : size.width * 0.60, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => true;
}
