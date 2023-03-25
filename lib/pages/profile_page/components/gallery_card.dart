import 'package:flutter/material.dart';

import '../../../models/place.dart';

class GalleryCard extends StatelessWidget {
  const GalleryCard({
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
      child: Column(
        children: [
          Container(
            // height: 150,
            // width: 150,
            decoration: const BoxDecoration(color: Colors.grey),
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset(
                place.images[0],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}