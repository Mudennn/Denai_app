import 'package:denai_app/pages/welcompages/welcome_page.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined), onPressed: () { Navigator.pushNamed(context, WelcomePage.routeName); },),
        title: const Text(
          "Sign In",
          style: TextStyle(color: textColor, fontSize: 18),
        ),
        centerTitle: true,
      ),
      // Welcome Back Container
      body: Body(),
    );
  }
}
