import 'package:denai_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../models/chat.dart';
import 'chat_input_field.dart';
import 'message.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // -- MESSAGE CONTAINER -- //
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: ListView.builder(
              itemCount: demoChatMessages.length,
              itemBuilder: (context, index) => Message(
                    message: demoChatMessages[index],
                  )),
        )),
        // -- MESSAGE INPUT FIELD -- //
        const ChatInputField(),
      ],
    );
  }
}



