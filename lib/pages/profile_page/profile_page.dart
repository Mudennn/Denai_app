import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../size_config.dart';
import 'components/body.dart';

class ProfilePage extends StatelessWidget {
  static String routeName = "/profile";
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: const Text("Denai", style: TextStyle(color: Colors.black),),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.settings_outlined),))
        ],
      ),
      body:const Body(),
    );
  }
}
