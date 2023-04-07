import 'package:flutter/material.dart';
import '../../components/custom_appbar.dart';
import '../../constant.dart';
import '../search/components/search_bar.dart';
import 'components/body.dart';

class ActivityPage extends StatelessWidget {
  static String routeName = "/activity";
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: '',
        leading: Text("MyDenai", style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: headingColor),),
        rightLeading: SearchBar(),
      ),
      body: Body(),
    );
  }
}
