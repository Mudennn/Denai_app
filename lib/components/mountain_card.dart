import 'package:flutter/material.dart';

import '../constant.dart';
import '../models/place.dart';

class MountainCard extends StatelessWidget {
  const MountainCard({
    super.key,
    required this.place,
    required this.press,
  });

  final Place place;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 250,
        width: 180,
        child: Card(
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1.02,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(place.images[0]),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  place.location,
                  style: const TextStyle(
                      color: headingColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  maxLines: 2,
                ),
                Text(
                  place.state,
                  style: const TextStyle(
                    color: textColor,
                  ),
                ),
                Text(place.difficulty,
                    style: TextStyle(
                        color: place.difficulty == "Hard"
                            ? Colors.red
                            : place.difficulty == "Moderate"
                                ? Colors.yellow
                                : Colors.green)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}