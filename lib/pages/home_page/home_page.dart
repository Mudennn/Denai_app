import 'package:flutter/material.dart';

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
        title: 'MyDenai',
        // titleWidget: Icon(Icons.menu_outlined),
        showActionIcon: true,
      ),
      body: Body(),
    );
  }
}