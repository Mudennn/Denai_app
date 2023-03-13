import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class ExploreMoreContainer extends StatelessWidget {
  const ExploreMoreContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: getProportionateScreenWidth(20),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: exploreData.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              right: getProportionateScreenWidth(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(
                            exploreData[index].image),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                Text(
                  exploreData[index].title,
                  style: const TextStyle(color: textColor),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Onboard {
  final String image, title, text;

  Onboard({
    required this.image,
    required this.title,
    required this.text,
  });
}

final List<Onboard> exploreData = [
  Onboard(
    image: "assets/image/Mountain1.jpg",
    title: "Hiking",
    text: "Sabah",
  ),
  Onboard(
    image: "assets/image/Mountain2.jpg",
    title: "Kayaking",
    text: "Negeri Sembilan",
  ),
  Onboard(
    image: "assets/image/Mountain3.jpg",
    title: "Camping",
    text: "Selangor",
  ),
  Onboard(
    image: "assets/image/tezos1.jpg",
    title: "Snorkling",
    text: "Selangor",
  ),
];