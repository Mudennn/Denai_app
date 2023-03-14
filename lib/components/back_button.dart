import 'package:flutter/material.dart';

import '../size_config.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    super.key, required this.iconData, required this.press,
  });
  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: press,
        icon: Icon(iconData),
      ),
    );
  }
}