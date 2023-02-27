import 'package:denai_app/pages/sign_in/sign_in_screen.dart';
import 'package:denai_app/pages/welcompages/welcome_page.dart';
import 'package:flutter/widgets.dart';

// use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  WelcomePage.routeName:(context) => WelcomePage(),
  SignInScreen.routeName:(context) => SignInScreen(),
};
