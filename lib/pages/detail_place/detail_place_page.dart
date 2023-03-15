import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';

import '../../models/place.dart';
import '../../size_config.dart';
import 'components/body.dart';
import 'components/detail_app_bar.dart';

class DetailPlacePage extends StatelessWidget {
  static String routeName = "/placedetail";
  const DetailPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PlaceDetailArgument arguments =
        ModalRoute.of(context)!.settings.arguments as PlaceDetailArgument;
    return Scaffold(
      body: Stack(
        children: [
          Body(place: arguments.place),
          PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: DetailAppBar(difficulty: arguments.place.difficulty),
          ),
        ],
      ),
    );
  }
}

class PlaceDetailArgument {
  final Place place;

  PlaceDetailArgument({required this.place});
}

// appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(80),
//         child: DetailAppBar(difficulty: arguments.place.difficulty),
//       ),
//       body: Body(place: arguments.place),