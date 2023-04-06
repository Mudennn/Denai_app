import 'package:flutter/material.dart';

import '../../../components/mountain_card.dart';
import '../../../components/section_title.dart';
import '../../../models/place.dart';
import '../../../size_config.dart';
import '../../detail_place/detail_place_page.dart';

class MountainAndHillContainer extends StatelessWidget {
  const MountainAndHillContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Mountain and Hill", press: () {}),
        SizedBox(height: getProportionateScreenHeight(8),),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  demoPlace.length,
                  (index) => MountainCard(
                    place: demoPlace[index],
                    press: () => Navigator.pushNamed(
                        context, DetailPlacePage.routeName,
                        arguments:
                            PlaceDetailArgument(place: demoPlace[index])),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}