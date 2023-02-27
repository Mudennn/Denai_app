import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';


// Content dan gambar 
class Content extends StatelessWidget {
  const Content({
    Key? key,
    required this.text,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String text, image, title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Spacer(),
            Text(
              title,
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: headingColor,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: textColor),
            ),
            const Spacer(
              flex: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            SvgPicture.asset(
              image,
              height: getProportionateScreenHeight(265),
              width: getProportionateScreenWidth(235),
            ),
          ],
        ),
      ),
    );
  }
}