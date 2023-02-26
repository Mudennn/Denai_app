import 'package:denai_app/pages/sign_in/sign_in_screen.dart';
import 'package:denai_app/pages/welcome_page_V2.dart';
import 'package:flutter/widgets.dart';

// use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  WelcomePageV2.routeName:(context) => WelcomePageV2(),
  SignInScreen.routeName:(context) => SignInScreen(),
};
