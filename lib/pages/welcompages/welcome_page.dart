import 'package:denai_app/pages/welcompages/component/body.dart';
import 'package:denai_app/size_config.dart';
import 'package:flutter/material.dart';


class WelcomePage extends StatelessWidget {
  static String routeName = "/welcomePage";
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
