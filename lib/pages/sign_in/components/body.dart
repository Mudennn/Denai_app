import 'package:denai_app/components/default_button.dart';
import 'package:denai_app/pages/sign_in/components/custom_surffix_icon.dart';
import 'package:flutter/material.dart';
import 'package:denai_app/size_config.dart';

import '../../../constant.dart';

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
        child: Column(
          children: const [
            Text(
              "Welcome Back",
              style: TextStyle(
                  color: headingColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Sign in with your email and password \nor continue with social media",
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor),
            ),
            SignForm(),
          ],
        ),
      )),
    );
  }
}

// Form

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        buildEmailFromField(),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        buildPasswordFormField(),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        DefaultButton(
          text: 'Continue',
          press: () {},
        ),
      ],
    ));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Icon(Icons.lock_outline_rounded),
        ),
      ),
    );
  }

  TextFormField buildEmailFromField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomeSurffixIcon(),
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
          child: Icon(Icons.email_outlined),
        ),
      ),
    );
  }
}
