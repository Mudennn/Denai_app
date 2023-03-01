import 'package:denai_app/components/default_button.dart';
import 'package:denai_app/components/social_icon.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
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
            SignUpForm(),

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
            Text(
              "By continuing your confirm that you agree with our Term and Condition",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textColor,
                fontSize: getProportionateScreenWidth(14),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String email;
  late String password;
  late String confirm_password;

  // void addError({required String error}) {
  //   if (!errors.contains(error)) {
  //     setState(() {
  //       errors.add(error);
  //     });
  //   }
  // }

  // void removeError({required String error}) {
  //   if (!errors.contains(error)) {
  //     setState(() {
  //       errors.remove(error);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildConfirmPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(text: "Cotinue", press: () {}),
        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => confirm_password = newValue!,
      onChanged: (value) {
        if (password == confirm_password && errors.contains(matchPassError)) {
          setState(() {
            errors.remove(passNullError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(matchPassError)) {
          // setState(() {
          //   errors.add(passNullError);
          // });
          return "";
        } else if (password != confirm_password &&
            !errors.contains(matchPassError)) {
          setState(() {
            errors.add(matchPassError);
          });
          return "";
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(20),
              getProportionateScreenWidth(20), getProportionateScreenWidth(20)),
          child: const Icon(Icons.lock_outline_rounded),
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(passNullError)) {
          setState(() {
            errors.remove(passNullError);
          });
        } else if (value.length >= 8 && errors.contains(shortPassError)) {
          setState(() {
            errors.remove(shortPassError);
          });
        }
        password = value;
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(passNullError)) {
          setState(() {
            errors.add(passNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(shortPassError)) {
          setState(() {
            errors.add(shortPassError);
          });
          return "";
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(20),
              getProportionateScreenWidth(20), getProportionateScreenWidth(20)),
          child: const Icon(Icons.lock_outline_rounded),
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(emailNullError)) {
          setState(() {
            errors.remove(emailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(invalidEmailError)) {
          setState(() {
            errors.remove(invalidEmailError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(emailNullError)) {
          setState(() {
            errors.add(emailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(invalidEmailError)) {
          setState(() {
            errors.add(invalidEmailError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomeSurffixIcon(),
        suffixIcon: Padding(
          padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(20),
              getProportionateScreenWidth(20), getProportionateScreenWidth(20)),
          child: const Icon(Icons.email_outlined),
        ),
      ),
    );
  }
}
