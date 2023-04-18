import 'package:flutter/material.dart';
import '../../components/custom_appbar.dart';
import '../../constant.dart';
import 'components/body.dart';

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: '',
        leading: Text(
          "MyDenai",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: headingColor),
        ),
        
      ),
      body: Body(),
    );
  }
}