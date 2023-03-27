import 'package:denai_app/constant.dart';
import 'package:denai_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../models/trip.dart';
import '../../chat_page/chat_page.dart';
import '../../detail_trip/detail_trip_page.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
            "Your Trip",
            style: TextStyle(fontSize: 22, color: headingColor),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          ...List.generate(demoTrip.length, (index) => JoinedTripCard(trip: demoTrip[index], chat: () => Navigator.pushNamed(context, ChatPage.routeName), detail: () => Navigator.pushNamed(context, DetailTripPage.routeName, arguments: TripDetailArgument(trip: demoTrip[index] ),),),),
      ],
      ),
    );
  }
}

class JoinedTripCard extends StatelessWidget {
  const JoinedTripCard({
    super.key, required this.trip, required this.chat, required this.detail,
  });

  final Trip trip;
  final GestureTapCallback chat;
  final GestureTapCallback detail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        SizedBox(
          width: double.infinity,
          height: 150,
          child: Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                    width: 90,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: AssetImage(trip.images[0]),
                            fit: BoxFit.cover)),
                  ),
                ),
                Column(
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
                    IntrinsicWidth(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // -- CHAT BUTTON --//
                          Expanded(
                              child: ElevatedButton(
                            onPressed: chat,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: buttonColor),
                            child: const Text("Chat"),
                          )),
                          const SizedBox(
                            width: 14,
                          ),
                          // -- VIEW DETAIL BUTTON -- //
                          Expanded(
                              child: OutlinedButton(
                            onPressed: detail,
                            style: OutlinedButton.styleFrom(
                                foregroundColor: buttonColor,
                                side: const BorderSide(color: buttonColor)),
                            child: const Text("View Detail"),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
