import 'package:denai_app/components/default_button.dart';
import 'package:denai_app/components/form_error.dart';
import 'package:denai_app/components/social_icon.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              // Tittle
              Text("Register Account", style: headingStyle),
              const Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
                style: TextStyle(color: textColor),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04, //8% total
              ),
              SignUpForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.04, //8% total
              ),

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
                height: getProportionateScreenHeight(15),
              ),
              Text(
                "By continuing your confirm that \nyou agree with our Term and Condition",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor,
                  fontSize: getProportionateScreenWidth(11),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
