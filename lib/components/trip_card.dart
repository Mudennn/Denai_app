import 'package:flutter/material.dart';
import '../constant.dart';
import '../models/trip.dart';
import '../size_config.dart';

class TripCard extends StatelessWidget {
  const TripCard({
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
      child: SizedBox(
        width: double.infinity,
        height: 125,
        child: Card(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: 3,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // -- IMAGE -- //
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10),
                    vertical: getProportionateScreenWidth(0)),
                child: Container(
                  width: 90,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: textColor,
                      image: DecorationImage(
                          image: AssetImage(trip.images[0]),
                          fit: BoxFit.cover)),
                ),
              ),

              SizedBox(
                width: 170,
                height: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // -- TITLE --//
                    Text(
                      trip.title,
                      style: const TextStyle(
                          color: headingColor, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // -- DATE --//
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
                          style:
                              const TextStyle(fontSize: 12, color: textColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // -- LOCATION --//
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
                          style:
                              const TextStyle(fontSize: 12, color: textColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // -- PERSON JOINED --//
                    Text.rich(
                      TextSpan(
                        text: "${trip.people} persons joined",
                        style: const TextStyle(fontSize: 12, color: textColor),
                      ),
                    ),
                  ],
                ),
              ),
              // -- PRICE COLUMN --//
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(5),
                      vertical: getProportionateScreenWidth(10),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "RM${trip.price}",
                        style:
                            const TextStyle(fontSize: 12, color: Colors.green),
                      ),
                    ),
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
