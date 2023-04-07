import 'package:flutter/material.dart';
import '../../components/back_button.dart';
// import '../../components/bottom_nav.dart';
import '../../components/custom_appbar.dart';
import '../../constant.dart';
import '../../models/trip.dart';
import 'components/body.dart';
// import 'components/detail_app_bar.dart';

class DetailTripPage extends StatelessWidget {
  static String routeName = "/tripdetail";
  const DetailTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TripDetailArgument arguments =
        ModalRoute.of(context)!.settings.arguments as TripDetailArgument;
    return Scaffold(
    //   body: Stack(
    //     children: [
    //       Body(trip: arguments.trip),
    //       PreferredSize(
    //         preferredSize: const Size.fromHeight(80),
    //         child: DetailAppBar(difficulty: arguments.trip.title),
    //       ),
    //     ],
    //   ),
    //   bottomNavigationBar: BottomNav(
    //     price: arguments.trip.price,
    //   ),
    // );
    extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: '',
        // titleWidget: Icon(Icons.menu_outlined),
        // showActionIcon: true,
        leading: BackBtn(
                iconData: Icons.arrow_back_ios_new,
                press: () => Navigator.pop(context),
              ),
        rightLeading:const Icon(Icons.share_outlined, color: whiteColor,),
      ),
      body: Body(trip: arguments.trip),
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
