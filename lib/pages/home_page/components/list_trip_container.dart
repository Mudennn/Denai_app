import 'package:flutter/material.dart';

import '../../../components/section_title.dart';
import '../../../components/trip_card.dart';
import '../../../models/trip.dart';
import '../../../size_config.dart';
import '../../detail_trip/detail_trip_page.dart';

class ListTripContainer extends StatelessWidget {
  const ListTripContainer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "List Trip", press: () {}),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        ...List.generate(
          demoTrip.length,
          (index) => TripCard(
              trip: demoTrip[index],
              press: () => Navigator.pushNamed(context, DetailTripPage.routeName, arguments: TripDetailArgument(trip: demoTrip[index] ),),),
        ),
      ],
    );
  }
}