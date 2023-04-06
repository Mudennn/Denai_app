import 'package:denai_app/components/place_card.dart';
import 'package:flutter/material.dart';

import '../../../components/section_title.dart';
import '../../../models/place.dart';
import '../../../size_config.dart';
import '../../detail_place/detail_place_page.dart';

class ListMountainAndHillContainer extends StatelessWidget {
  const ListMountainAndHillContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Mountain and hill", press: () {}),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        ...List.generate(
          demoPlace.length,
          (index) => PlaceCard(
              place: demoPlace[index],
              press: () => Navigator.pushNamed(context, DetailPlacePage.routeName, arguments: PlaceDetailArgument(place: demoPlace[index] )),),
        ),
      ],
    );
  }
}
