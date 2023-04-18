import 'package:flutter/material.dart';

import '../../components/custom_appbar.dart';
import '../../constant.dart';
import 'components/body.dart';

class ProfilePage extends StatelessWidget {
  static String routeName = "/profile";
  const ProfilePage({super.key});

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
        rightLeading: Icon(Icons.settings_outlined, color: headingColor,),
      ),
      body: Body(),
    );
  }
}
