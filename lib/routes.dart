import 'package:denai_app/pages/activity/activity_page.dart';
import 'package:denai_app/pages/activity_form/add_activity_form.dart';
import 'package:denai_app/pages/cart/cart_page.dart';
import 'package:denai_app/pages/chat_page/chat_page.dart';
import 'package:denai_app/pages/complete_profile/complete_profile_page.dart';
import 'package:denai_app/pages/detail_place/detail_place_page.dart';
import 'package:denai_app/pages/detail_trip/detail_trip_page.dart';
import 'package:denai_app/pages/forgot_password/forgot_password_page.dart';
import 'package:denai_app/pages/home_page/home_page.dart';
// import 'package:denai_app/pages/home_page.dart';
import 'package:denai_app/pages/login_success/login_success_page.dart';
import 'package:denai_app/pages/navpages/main_page.dart';
import 'package:denai_app/pages/search/search_page.dart';
import 'package:denai_app/pages/otp/otp_page.dart';
import 'package:denai_app/pages/profile_page/profile_page.dart';
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
  DetailTripPage.routeName: (context) => const DetailTripPage(),

  CartPage.routeName: (context) => const CartPage(),

  ProfilePage.routeName: (context) => const ProfilePage(),
  ActivityPage.routeName: (context) => const ActivityPage(),
  SearchPage.routeName: (context) => const SearchPage(),

  ChatPage.routeName: (context) => const ChatPage(),

  AddActivityForm.routeName: (context) => const AddActivityForm(),


};
