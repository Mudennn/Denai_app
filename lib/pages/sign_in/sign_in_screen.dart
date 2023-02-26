import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Sign In",
          style: TextStyle(color: textColor, fontSize: 18),
        ),
        centerTitle: true,
      ),
      // Welcome Back Container
      body: SizedBox(
        width: double.infinity,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: const [
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: headingColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Sign in with your email and password \nor continue with social media",
                textAlign: TextAlign.center,
                style: TextStyle(color: textColor),
              ),
              SignForm(),
            ],
          ),
        )),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: InputDecoration(hintText: "Enter your email"),
        )
      ],
    ));
  }
}
