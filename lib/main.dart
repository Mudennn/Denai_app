import 'package:denai_app/pages/detail_page.dart';
import 'package:denai_app/pages/navpages/main_page.dart';
import 'package:denai_app/pages/welcompages/welcome_page.dart';
import 'package:denai_app/routes.dart';
import 'package:denai_app/theme.dart';
import 'package:flutter/material.dart';


// import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Denai App',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: WelcomePage.routeName,
      routes: routes,
      // home: DetailPage()
      // home: BlocProvider<AppCubits>(
      //   create:(context) => AppCubits(),
      //   child: AppCubitLogics(),
      // )
    );
  }
}


