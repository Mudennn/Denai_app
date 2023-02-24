// import 'package:denai_app/pages/navpages/home_page.dart';
import 'package:denai_app/cubit/app_cubit_logics.dart';
import 'package:denai_app/cubit/app_cubits.dart';
import 'package:denai_app/pages/detail_page.dart';
// import 'package:denai_app/pages/navpages/main_page.dart';
// import 'package:denai_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create:(context) => AppCubits(),
        child: AppCubitLogics(),
      )
    );
  }
}


