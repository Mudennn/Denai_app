import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
import 'popular_container.dart';

class PopularPlaceContainer extends StatelessWidget {
  const PopularPlaceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Text(
            "Popular Place",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                fontWeight: FontWeight.bold,
                color: headingColor),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          height: 300,
          padding: const EdgeInsets.only(left: 20),
          width: double.maxFinite,
          child: const PopularContainer(),
        )
      ],
    );
  }
}
