import 'package:denai_app/pages/navpages/activity_page.dart';
import 'package:denai_app/pages/navpages/home_page.dart';
import 'package:denai_app/pages/navpages/profile_page.dart';
import 'package:denai_app/pages/navpages/trip_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    ActivityPage(),
    TripPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Activity",
          icon: Icon(Icons.directions_walk),
        ),
        BottomNavigationBarItem(
          label: "Trip",
          icon: Icon(Icons.chat),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(Icons.person),
        ),
      ]),
    );
  }
}
