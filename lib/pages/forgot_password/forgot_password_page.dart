import 'package:flutter/material.dart';

import '../../constant.dart';
import 'components/body.dart';

class ForgotPasswordPage extends StatelessWidget {
  static String routeName = "forgot_password";
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Forget Password",
          style: TextStyle(color: textColor, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
