import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/trip.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.trip,
    required this.press,
  });

  final Trip trip;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: 100,
            // width: 100,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Image.asset(
                  trip.images[0],
                  fit: BoxFit.cover,
                )),
          ),
          //--TITLE--//
          Text(
            trip.title,
            style: const TextStyle(
                fontSize: 14, color: headingColor, fontWeight: FontWeight.bold),
          ),
          //--DATE--//
          Row(
            children: [
              const Icon(
                Icons.calendar_today_outlined,
                size: 12,
                color: textColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                trip.date,
                style: const TextStyle(fontSize: 12, color: textColor),
              ),
            ],
          ),
          //--LOCATION--//
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 12,
                color: textColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                trip.location,
                style: const TextStyle(fontSize: 12, color: textColor),
              ),
            ],
          ),
          //--PRICE--//
          Text.rich(
            TextSpan(
              text: "RM${trip.price.toInt()}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: buttonColor,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
