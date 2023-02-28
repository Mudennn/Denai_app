// import 'package:denai_app/components/default_button.dart';
// import 'package:denai_app/components/custom_surffix_icon.dart';
// import 'package:denai_app/components/form_error.dart';
import 'package:denai_app/components/no_account_text.dart';
import 'package:denai_app/components/social_icon.dart';
import 'package:denai_app/size_config.dart';
import 'package:flutter/material.dart';
// import 'package:denai_app/size_config.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';
import 'sign_in_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              // Tittle
              const Text(
                "Welcome Back",
                style: TextStyle(
                    color: headingColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Sign in with your email and password \nor continue with social media",
                textAlign: TextAlign.center,
                style: TextStyle(color: textColor),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              // Sign Form
              SignForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              // Social media container
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/image/icons8-google.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/image/icons8-facebook.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/image/icons8-twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              // Sign Up Container
              NoAccountText()
            ],
          ),
        ),
      )),
    );
  }
}

