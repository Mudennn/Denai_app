import 'package:flutter/material.dart';

import '../../constant.dart';
import 'components/body.dart';
import '../../components/custom_appbar.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: '',
        // titleWidget: Icon(Icons.menu_outlined),
        // showActionIcon: true,
        leading: Text(
          "MyDenai",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: headingColor),
        ),
        rightLeading: Icon(Icons.notifications_none_outlined, color: headingColor,),
      ),
      body: Body(),
    );
  }
}
