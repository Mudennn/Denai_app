import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';

import '../../components/back_button.dart';
import '../../models/place.dart';
import '../../size_config.dart';

class DetailPlacePage extends StatelessWidget {
  static String routeName = "/placedetail";
  const DetailPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PlaceDetailArgument arguments =
        ModalRoute.of(context)!.settings.arguments as PlaceDetailArgument;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: DetailAppBar(difficulty: arguments.place.difficulty),
      ),
    );
  }
}

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({
    super.key,
    required this.difficulty,
  });

  final String difficulty;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackBtn(
                iconData: Icons.arrow_back_ios_new,
                press: () => Navigator.pop(context),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                decoration: BoxDecoration(
                    color: difficulty == "Hard"
                        ? Colors.red[50]
                        : difficulty == "Medium"
                            ? Colors.yellow[50]
                            : Colors.green[50],
                    borderRadius: BorderRadius.circular(14)),
                child: Text(difficulty,
                    style: TextStyle(
                        color: difficulty == "Hard"
                            ? Colors.red
                            : difficulty == "Medium"
                                ? Colors.yellow
                                : Colors.green)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class CustomAppBar extends PreferredSize {
//   const CustomAppBar({super.key, required super.child, required super.preferredSize});

//   @override
//   //AppBar().preferredSize.height provide us the height that apply on our app bar
//   Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//         child: Row(
//           children: [
//             BackBtn(
//                 iconData: Icons.arrow_back_ios_new_rounded,
//                 press: () => Navigator.pop(context),),
//           ],
//         ),
//       ),
//     );
//   }
// }

class PlaceDetailArgument {
  final Place place;

  PlaceDetailArgument({required this.place});
}




// AppBar(
//         leading: Padding(
//           padding: const EdgeInsets.only(top: 20, left:20),
//           child: Row(
//             children: [
//               BackBtn(iconData: Icons.arrow_back_ios_new, press: () => Navigator.pop(context),),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.red[50]
//                 ),
//               )
//             ],
//           ),
//         ),
//       )