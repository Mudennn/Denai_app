import 'package:denai_app/components/default_button.dart';
import 'package:denai_app/constant.dart';
import 'package:denai_app/pages/home_page/home_page.dart';
import 'package:denai_app/pages/navpages/main_page.dart';

import 'package:denai_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          "assets/image/tezos1.jpg",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Text(
          "Login Success!",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(30), color: headingColor),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: 'Proceed',
            press: () {
              Navigator.pushNamed(context, MainPage.routeName);
            },
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
