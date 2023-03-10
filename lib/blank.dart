import 'package:flutter/material.dart';

class Blank extends StatelessWidget {
  const Blank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(child: Image.asset("image/laptop.jpg")),
          Text("apahal")
        ],
      ),
    );
  }
}