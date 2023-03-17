import 'package:flutter/material.dart';

import '../size_config.dart';
import 'default_button.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
    required this.price,
  });

  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.only(
              left: getProportionateScreenWidth(20),
              right: getProportionateScreenWidth(20),
              top: 15,
              bottom: 15),
          decoration: const BoxDecoration(color: Colors.white),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 10, vertical: getProportionateScreenHeight(16)),
              //
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.green[50],
              ),
              child: Text.rich(
                TextSpan(
                  text: "RM$price",
                  style: const TextStyle(color: Colors.green),
                ),
              ),
            ),
            SizedBox(
                width: getProportionateScreenWidth(250),
                child: DefaultButton(text: "Book Now", press: () {}))
          ]),
        ),
      ],
    );
  }
}