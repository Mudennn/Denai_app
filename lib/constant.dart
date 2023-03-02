import 'package:flutter/material.dart';

import 'size_config.dart';

const buttonColor = Color(0xFF188e4f);
const headingColor = Color(0xFF2f505d);
const textColor = Color(0xFF6d7b81);
const tagColor = Color(0xFFf29911);
const whiteColor = Color(0xFFF4f6f7);

const animationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
    color: headingColor,
    fontSize: getProportionateScreenWidth(28),
    fontWeight: FontWeight.bold,
    height: 1.5);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]");
const String emailNullError = "Please Enter Your Email";
const String invalidEmailError = "Please Enter Valid Email";
const String passNullError = "Please Enter Your Password";
const String rePassNullError = "Please Re-enter Your Password";
const String shortPassError = "Password is too short";
const String matchPassError = "Password don't match";
const String nameNullError = "Please Enter your name";
const String phoneNumberNullError = "Please Enter your phone number";
const String addressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: BorderSide(color: textColor),
);
}
