import 'package:flutter/material.dart';

import '../chat_page/chat_page.dart';

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
    );
  }
}