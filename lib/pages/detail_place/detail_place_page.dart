import 'package:flutter/material.dart';
import '../../components/back_button.dart';
import '../../components/custom_appbar.dart';
import '../../constant.dart';
import '../../models/place.dart';
import 'components/body.dart';
// import 'components/detail_app_bar.dart';

class DetailPlacePage extends StatelessWidget {
  static String routeName = "/placedetail";
  const DetailPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PlaceDetailArgument arguments =
        ModalRoute.of(context)!.settings.arguments as PlaceDetailArgument;
    return Scaffold(
      // body: Stack(
      //   children: [
      //     Body(place: arguments.place),
      //     PreferredSize(
      //       preferredSize: const Size.fromHeight(80),
      //       child: DetailAppBar(difficulty: arguments.place.difficulty),
      //     ),
      //   ],
      // ),
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: '',
        // titleWidget: Icon(Icons.menu_outlined),
        // showActionIcon: true,
        leading: BackBtn(
                iconData: Icons.arrow_back_ios_new,
                press: () => Navigator.pop(context),
              ),
        rightLeading:const Icon(Icons.bookmark_border_outlined, color: whiteColor,),
      ),
      body: Body(place: arguments.place),
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