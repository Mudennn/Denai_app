import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key, required this.text, required this.press,
  });

  final String text;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.bold,
                  color: headingColor),
            ),
            GestureDetector(
              onTap: press,
              child: Text(
                "See all",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(12),
                    color: buttonColor),
              ),
            ),
          ],
        ),
    );
  }
}