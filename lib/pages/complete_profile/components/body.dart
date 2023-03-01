import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Complete Profile",
            style: headingStyle,
          ),
          const Text(
            "Complete your details or continue \nwith social media",
            textAlign: TextAlign.center,
          ),
          CompleteProfileForm(),
        ],
      ),
    );
  }
}

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: [
          TextFormField(
              onSaved: (newValue) => address = newValue!,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(error: addressNullError);
                }
                return;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  addError(error: addressNullError);
                  return "";
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Address",
                hintText: "Enter your phone address",
                // If  you are using latest version of flutter then lable text and hint text shown like this
                // if you r using flutter less then 1.20.* then maybe this is not working properly
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Padding(
                  padding: EdgeInsets.fromLTRB(
                      0,
                      getProportionateScreenWidth(20),
                      getProportionateScreenWidth(20),
                      getProportionateScreenWidth(20)),
                  child: const Icon(Icons.lock_outline_rounded),
                ),
              ))
        ]));
  }
}
