import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/cart.dart';
import '../../../size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key, required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
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
              child: Image.asset(cart.trip.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              cart.trip.title,
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
                    text: "RM${cart.trip.price.toInt()}",
                    style: const TextStyle(color: buttonColor),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text.rich(
                  TextSpan(
                    text: "x${cart.numberOfItems}",
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