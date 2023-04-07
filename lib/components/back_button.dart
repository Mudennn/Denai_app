import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    super.key,
    required this.iconData,
    required this.press,
  });
  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   // height: getProportionateScreenWidth(40),
    //   // width: getProportionateScreenWidth(20),
    //   child: Container(
    //     padding: const EdgeInsets.all(8),
    //     decoration: BoxDecoration(
    //       color: Colors.grey.withOpacity(0.1),
    //       borderRadius: BorderRadius.circular(50)
    //     ),
    //     child: IconButton(
    //       padding: EdgeInsets.zero,
    //       onPressed: press,
    //       icon: Icon(iconData, color: Colors.white,),
    //     ),
    //   ),
    // );
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: whiteColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50)),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
