import 'package:flutter/material.dart';

import '../../../constant.dart';

class AddActivityButton extends StatelessWidget {
  final String title;
  final GestureTapCallback press; // kalau guna function letak function()?

  const AddActivityButton(
      {super.key, required this.press, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
      child: Text(title),
    );
  }
}
