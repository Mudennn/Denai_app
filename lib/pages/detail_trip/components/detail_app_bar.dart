import 'package:flutter/material.dart';

import '../../../components/back_button.dart';
import '../../../size_config.dart';

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
              // Container(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              //   decoration: BoxDecoration(
              //       color: difficulty == "Hard"
              //           ? Colors.red[50]
              //           : difficulty == "Moderate"
              //               ? Colors.yellow[50]
              //               : Colors.green[50],
              //       borderRadius: BorderRadius.circular(14)),
              //   child: Text(difficulty,
              //       style: TextStyle(
              //           color: difficulty == "Hard"
              //               ? Colors.red
              //               : difficulty == "Moderate"
              //                   ? Colors.yellow
              //                   : Colors.green)),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
