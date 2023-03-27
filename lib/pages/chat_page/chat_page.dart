import 'package:flutter/material.dart';

import 'components/body.dart';
import 'components/chat_group_bar.dart';

class ChatPage extends StatelessWidget {
  static String routeName = "/chat";
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: ChatGroupBar(),
        ),
        body: Body());
  }
}
