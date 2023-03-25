import 'package:denai_app/constant.dart';

import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'components/body.dart';

class ActivityPage extends StatelessWidget {
  static String routeName = "/activity";
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: const Text(
          "Denai",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt_outlined,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
      body: const Body(),
    );
  }
}
