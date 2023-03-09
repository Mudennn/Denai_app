import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/Mountain.dart';
import '../size_config.dart';

class MountainCard extends StatelessWidget {
  const MountainCard({
    super.key,
    // this.width = 140,
    // this.aspectRatio = 1.02,
    required this.mountain,
  });

  // final double width, aspectRatio;
  final Mountain mountain;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 105,
      child: Card(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: 3,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10), vertical: 10),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: textColor,
                    image: DecorationImage(
                        image: AssetImage(mountain.images[0]),
                        fit: BoxFit.cover)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mountain.location,
                  style: const TextStyle(
                      color: headingColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  mountain.state,
                  style: const TextStyle(fontSize: 12, color: textColor),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Text('Difficulty:'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(mountain.difficulty,
                          style: TextStyle(
                              color: mountain.difficulty == "Hard"
                                  ? Colors.red
                                  : mountain.difficulty == "Medium"
                                      ? Colors.yellow
                                      : Colors.green)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
