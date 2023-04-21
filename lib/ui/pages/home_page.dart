import 'package:flutter/material.dart';
import 'package:heaven_fish/ui/shared/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 225, 225, 225),
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 180),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Text("Aqui ira el carousel"),
          ],
        ),
      ),
    );
  }
}
