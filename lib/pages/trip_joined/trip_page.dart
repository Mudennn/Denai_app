import 'package:flutter/material.dart';
import 'components/body.dart';

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Denai", style: TextStyle(color: Colors.black),),
      ),
      body: Body(),
    );
  }
}