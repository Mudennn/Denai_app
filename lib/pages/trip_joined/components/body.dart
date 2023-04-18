import 'package:denai_app/constant.dart';
import 'package:denai_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../models/trip.dart';
import '../../chat_page/chat_page.dart';
import '../../detail_trip/detail_trip_page.dart';
import 'joined_trip_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your Trip",
            style: TextStyle(fontSize: 22, color: headingColor, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          ...List.generate(
            demoTrip.length,
            (index) => JoinedTripCard(
              trip: demoTrip[index],
              chat: () => Navigator.pushNamed(context, ChatPage.routeName),
              detail: () => Navigator.pushNamed(
                context,
                DetailTripPage.routeName,
                arguments: TripDetailArgument(trip: demoTrip[index]),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}


