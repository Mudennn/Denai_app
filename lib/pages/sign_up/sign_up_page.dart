import 'package:flutter/material.dart';

import '../../constant.dart';
import 'components/body.dart';

class SignUpPage extends StatelessWidget {
  static String routeName = "/sign_up";

  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(color: textColor, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
