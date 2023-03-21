import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';

import '../../../models/cart.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[50],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(demoCarts[0].trip.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              demoCarts[0].trip.title,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              maxLines: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    text: "RM${demoCarts[0].trip.price}",
                    style: const TextStyle(color: buttonColor),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text.rich(
                  TextSpan(
                    text: "x${demoCarts[0].numberOfItems}",
                    style: const TextStyle(color: textColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
