import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "tezo1.jpg",
    "tezo2.jpg",
    "tezo3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("image/tezos1.jpg",
                  height: 530, width: size.width, fit: BoxFit.cover),
              Positioned(
                bottom: 0.0,
                child: Container(
                  height: 36.0,
                  width: size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: const [
              Text(
                "Choose your prefered hiking trail.",
                style: TextStyle(
                    fontSize: 32.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text("Text 1"),
              Text("Text 1"),
            ],
          )
        ],
      ),
    );
  }
}
