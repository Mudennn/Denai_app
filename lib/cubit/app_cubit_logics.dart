import 'package:denai_app/cubit/app_cubit_state.dart';
import 'package:denai_app/cubit/app_cubits.dart';
import 'package:denai_app/pages/trash/welcome_page_trash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitState>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return WelcomePage();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
