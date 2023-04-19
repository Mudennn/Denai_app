import 'package:flutter/material.dart';

import '../constant.dart';
import '../pages/cart/cart_page.dart';
import '../pages/detail_trip/detail_trip_page.dart';
import '../size_config.dart';
import 'default_button.dart';

class AddToCartBar extends StatelessWidget {
  const AddToCartBar({
    super.key,
    required this.arguments,
  });

  final TripDetailArgument arguments;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        color: Colors.grey.withOpacity(0.1)
      ),
      height: 72,
      padding: const EdgeInsets.all(8),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(TextSpan(
                text: "Price\n",
                style: const TextStyle(fontWeight: FontWeight.normal),
                children: [
                  const TextSpan(
                      text: "RM",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: buttonColor)),
                  TextSpan(
                      text: arguments.trip.price.toInt().toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: buttonColor)),
                  const TextSpan(
                      text: "/person",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: buttonColor))
                ])),
            SizedBox(
                width: getProportionateScreenWidth(190),
                child: DefaultButton(
                  press: () => Navigator.pushNamed(
                        context, CartPage.routeName),
                  text: "Add to cart",
                ))
          ],
        ),
      ),
    );
  }
}