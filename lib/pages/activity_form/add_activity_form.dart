import 'package:flutter/material.dart';
import '../../components/custom_appbar.dart';
import 'components/body.dart';

class AddActivityForm extends StatelessWidget {
  static String routeName = "/activityform";
  const AddActivityForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: 'Add Activity',
        // titleWidget: Icon(Icons.menu_outlined),
        // showActionIcon: true,
        // leading: BackBtn(
        //         iconData: Icons.arrow_back_ios_new,
        //         press: () => Navigator.pop(context),
        //       ),
      ),
      body: Body(),
    );
  }
}