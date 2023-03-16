import 'package:flutter/material.dart';
import '../../models/place.dart';

import '../../models/trip.dart';
import 'components/body.dart';
import 'components/detail_app_bar.dart';

class DetailTripPage extends StatelessWidget {
  static String routeName = "/tripdetail";
  const DetailTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TripDetailArgument arguments =
        ModalRoute.of(context)!.settings.arguments as TripDetailArgument;
    return Scaffold(
      body: Stack(
        children: [
          Body(trip: arguments.trip),
          PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: DetailAppBar(difficulty: arguments.trip.title),
          ),
        ],
      ),
    );
  }
}

class TripDetailArgument {
  final Trip trip;

  TripDetailArgument({required this.trip});
}

// appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(80),
//         child: DetailAppBar(difficulty: arguments.place.difficulty),
//       ),
//       body: Body(place: arguments.place),