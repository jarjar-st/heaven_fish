import 'package:flutter/material.dart';
import 'package:heaven_fish/ui/shared/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 225, 225),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 180),
        child: CustomAppBar(),
      ),
    );
  }
}
