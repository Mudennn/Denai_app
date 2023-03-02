import 'package:flutter/material.dart';

import '../../constant.dart';
import 'components/body.dart';

class OtpPage extends StatelessWidget {
  static String routeName = "/otp";
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "OTP Verification",
          style: TextStyle(color: textColor, fontSize: 18),
        ),
        centerTitle: true,
      ),
      // Welcome Back Container
      body: Body(),
    );
  }
}