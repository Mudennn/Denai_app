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
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //       // height: 100,
      //       // width: 100,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         borderRadius: BorderRadius.circular(8),
      //       ),
      //       child: AspectRatio(
      //           aspectRatio: 1 / 1,
      //           child: Image.asset(
      //             trip.images[0],
      //             fit: BoxFit.cover,
      //           )),
      //     ),
      //     const SizedBox(height: 4,),
      //     //--TITLE--//
      //     Text(
      //       trip.title,
      //       style: const TextStyle(
      //           fontSize: 14, color: headingColor),
      //     ),
      //     //--PRICE--//
      //     Text.rich(
      //       TextSpan(
      //         text: "RM${trip.price.toInt()}",
      //         style: const TextStyle(
      //           fontWeight: FontWeight.bold,
      //           color: buttonColor,
      //           fontSize: 16,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(height: 4,),
      //     //--DATE--//
      //     Row(
      //       children: [
      //         const Icon(
      //           Icons.calendar_today_outlined,
      //           size: 12,
      //           color: textColor,
      //         ),
      //         const SizedBox(
      //           width: 5,
      //         ),
      //         Text(
      //           trip.date,
      //           style: const TextStyle(fontSize: 12, color: textColor),
      //         ),
      //       ],
      //     ),
      //     //--LOCATION--//
      //     Row(
      //       children: [
      //         const Icon(
      //           Icons.location_on_outlined,
      //           size: 12,
      //           color: textColor,
      //         ),
      //         const SizedBox(
      //           width: 5,
      //         ),
      //         Text(
      //           trip.location,
      //           style: const TextStyle(fontSize: 12, color: textColor),
      //         ),
      //       ],
      //     ),

      //   ],
      // ),
      child: SizedBox(
        // height: 300,
        // width: 10,
        child: Card(
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 1/1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: AssetImage(trip.images[0]),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                // --TITLE--//
                Text(
                  trip.title,
                  maxLines: 1,
                  style: const TextStyle(fontSize: 14, color: headingColor),
                ),
                //--PRICE--//
                Text.rich(
                  TextSpan(
                    text: "RM${trip.price.toInt()}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: buttonColor,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
