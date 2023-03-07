import 'package:denai_app/pages/complete_profile/complete_profile_page.dart';
import 'package:denai_app/pages/forgot_password/forgot_password_page.dart';
import 'package:denai_app/pages/home_page/home_page.dart';
// import 'package:denai_app/pages/home_page.dart';
import 'package:denai_app/pages/login_success/login_success_page.dart';
import 'package:denai_app/pages/navpages/main_page.dart';
import 'package:denai_app/pages/otp/otp_page.dart';
import 'package:denai_app/pages/sign_in/sign_in_screen.dart';
import 'package:denai_app/pages/sign_up/sign_up_page.dart';
import 'package:denai_app/pages/welcompages/welcome_page.dart';
import 'package:flutter/widgets.dart';

// use name route
// All routes will be available here
final Map<String, WidgetBuilder> routes = {
  WelcomePage.routeName:(context) => WelcomePage(),
  SignInScreen.routeName:(context) => SignInScreen(),
  ForgotPasswordPage.routeName:(context) => ForgotPasswordPage(),
  LoginSuccessPage.routeName:(context) => LoginSuccessPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  CompleteProfilePage.routeName: (context) => CompleteProfilePage(),
  OtpPage.routeName: (context) => OtpPage(),
  HomePage.routeName: (context) => HomePage(),
  MainPage.routeName: (context) => MainPage(),
};
