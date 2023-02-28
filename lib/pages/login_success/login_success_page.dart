import 'package:flutter/material.dart';

import '../../constant.dart';
import 'component/body.dart';

class LoginSuccessPage extends StatelessWidget {
  static String routeName = "/login_success";
  const LoginSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: const Text(
          "Login Success",
          style: TextStyle(color: textColor, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
