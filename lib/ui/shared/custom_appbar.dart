import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Transform.rotate(
                angle: 1.60,
                child: Image.asset(
                  'assets/pez.png',
                  height: 20,
                  color: const Color.fromARGB(255, 0, 102, 199),
                ),
              ),
            ),
            Expanded(child: Container()),
            const Expanded(child: TextUnderlineButton(text: "ABOUT")),
            const Expanded(child: TextUnderlineButton(text: "ORIGIN")),
            Expanded(
              child: Transform.rotate(
                angle: 1.60,
                child: Image.asset(
                  'assets/pez.png',
                  height: 50,
                  color: const Color.fromARGB(255, 0, 102, 199),
                ),
              ),
            ),
            const Expanded(child: TextUnderlineButton(text: "TRADE MARK")),
            const Expanded(child: TextUnderlineButton(text: "IMPACT")),
            Expanded(child: Container()),
            const Expanded(child: ShoPButton()),
          ],
        ),
      ),
      elevation: 0,
    );
  }
}

class ShoPButton extends StatelessWidget {
  const ShoPButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(
            shadowColor: MaterialStatePropertyAll(
              Colors.transparent,
            ),
            backgroundColor: MaterialStatePropertyAll(
              Colors.transparent,
            ),
          ),
          child: Row(
            children: [
              const Text(
                "SHOP",
                style: TextStyle(
                  color: Colors.transparent,
                  fontFamily: 'Aleo',
                  fontWeight: FontWeight.bold,
                  fontSize: 8,
                  shadows: [
                    Shadow(
                      color: Color.fromARGB(255, 0, 102, 199),
                      offset: Offset(0, -3),
                    ),
                  ],
                  decoration: TextDecoration.underline,
                  decorationColor: Color.fromARGB(255, 0, 102, 199),
                  decorationThickness: 2,
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -3),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 15,
                  color: Color.fromARGB(255, 0, 102, 199),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TextUnderlineButton extends StatelessWidget {
  final String text;
  const TextUnderlineButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.transparent,
          fontFamily: 'Aleo',
          fontWeight: FontWeight.bold,
          fontSize: 8,
          shadows: [
            Shadow(
              color: Color.fromARGB(255, 0, 102, 199),
              offset: Offset(0, -3),
            ),
          ],
          decoration: TextDecoration.underline,
          decorationColor: Color.fromARGB(255, 0, 102, 199),
          decorationThickness: 2,
        ),
      ),
    );
  }
}
