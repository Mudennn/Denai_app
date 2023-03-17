import 'package:flutter/material.dart';

import 'components/body.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}