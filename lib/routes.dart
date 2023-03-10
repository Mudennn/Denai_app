import 'package:denai_app/pages/complete_profile/complete_profile_page.dart';
import 'package:denai_app/pages/detail_place/detail_place_page.dart';
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
  WelcomePage.routeName:(context) => const WelcomePage(),
  SignInScreen.routeName:(context) => const SignInScreen(),
  ForgotPasswordPage.routeName:(context) => const ForgotPasswordPage(),
  LoginSuccessPage.routeName:(context) => const LoginSuccessPage(),
  SignUpPage.routeName: (context) => const SignUpPage(),
  CompleteProfilePage.routeName: (context) => const CompleteProfilePage(),
  OtpPage.routeName: (context) => const OtpPage(),
  HomePage.routeName: (context) => const HomePage(),
  MainPage.routeName: (context) => const MainPage(),

  DetailPlacePage.routeName: (context) => const DetailPlacePage(),


};
