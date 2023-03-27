import 'package:flutter/material.dart';
import '../../../models/chat.dart';
import '../../../size_config.dart';
import 'audio_message.dart';
import 'text_message.dart';
import 'video_message.dart';

class Message extends StatelessWidget {
  const Message({
    super.key,
    required this.message,
  });

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return VideoMessage(message: message);
        // break;
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment:
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          // -- CIRCLE AVATAR -- //
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage("assets/image/Mountain2.jpg"),
            ),
            const SizedBox(
              width: 10,
            )
          ],
          messageContaint(message)
        ],
      ),
    );
  }
}


