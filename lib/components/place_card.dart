import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/place.dart';
import '../size_config.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    super.key,
    // this.width = 140,
    // this.aspectRatio = 1.02,
    required this.place, required this.press,
  });

  // final double width, aspectRatio;
  final Place place;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: press,
      child: SizedBox(
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
                          image: AssetImage(place.images[0]),
                          fit: BoxFit.cover)),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.location,
                    style: const TextStyle(
                        color: headingColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    place.state,
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
                        child: Text(place.difficulty,
                            style: TextStyle(
                                color: place.difficulty == "Hard"
                                    ? Colors.red
                                    : place.difficulty == "Medium"
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
      ),
    );
  }
}
