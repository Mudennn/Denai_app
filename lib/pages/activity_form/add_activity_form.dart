import 'package:flutter/material.dart';

import 'components/body.dart';

class AddActivityForm extends StatelessWidget {
  static String routeName = "/activityform";
  const AddActivityForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Denai", style: TextStyle(color: Colors.black),),
      ),
      body:const Body(),
    );
  }
}