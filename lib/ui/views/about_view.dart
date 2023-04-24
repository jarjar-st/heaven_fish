import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "WHATS IS\nTHE LLUVIA\nDE PECES?",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Aleo',
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                  ),
                ),
                const Text(
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
                Image.asset(
                  'assets/pez.png',
                  height: 50,
                  color: Colors.white,
                ),
                const Text(
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
            const SizedBox(height: 45),
            Image.asset("assets/IMG_1319.JPG"),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    paint.color = const Color.fromARGB(255, 225, 225, 225);
    path.moveTo(size.width * 0.40, 0);
    path.lineTo(size.width * 0.5, size.height * 0.03);
    path.lineTo(size.width * 0.60, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) => true;
}
