import 'package:denai_app/pages/forgot_password/forgot_password_page.dart';
import 'package:denai_app/pages/sign_up/sign_up_page.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.popAndPushNamed(context, SignUpPage.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: buttonColor),
          ),
        ),
      ],
    );
  }
}
