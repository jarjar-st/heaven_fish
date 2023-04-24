import 'package:flutter/material.dart';
import 'package:heaven_fish/providers/page_provider.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
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
                child: GestureDetector(
                  onTap: () => pageProvider.goTo(0),
                  child: Image.asset(
                    'assets/pez.png',
                    height: 20,
                    color: const Color.fromARGB(255, 0, 102, 199),
                  ),
                ),
              ),
            ),
            Expanded(child: Container()),
            Expanded(
              child: TextUnderlineButton(
                text: "ABOUT",
                provider: pageProvider,
                index: 1,
              ),
            ),
            Expanded(
              child: TextUnderlineButton(
                text: "ORIGIN",
                provider: pageProvider,
                index: 2,
              ),
            ),
            Expanded(
              child: Transform.rotate(
                angle: 1.60,
                child: Image.asset(
                  'assets/pez.png',
                  height: 40,
                  color: const Color.fromARGB(255, 0, 102, 199),
                ),
              ),
            ),
            Expanded(
              child: TextUnderlineButton(
                text: "TRADE MARK",
                provider: pageProvider,
                index: 3,
              ),
            ),
            Expanded(
              child: TextUnderlineButton(
                text: "IMPACT",
                provider: pageProvider,
                index: 4,
              ),
            ),
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
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return Row(
      children: [
        ElevatedButton(
          onPressed: () => pageProvider.goTo(5),
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
  final PageProvider provider;
  final int index;
  const TextUnderlineButton({
    super.key,
    required this.text,
    required this.provider,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => provider.goTo(index),
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
