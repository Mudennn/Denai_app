import 'package:flutter/material.dart';

import '../size_config.dart';

class CustomeSurffixIcon extends StatelessWidget {
  const CustomeSurffixIcon({
    super.key, 
  });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      // child: Icon(Icons.email_outlined),
    );
  }
}
