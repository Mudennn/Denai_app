import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/chat.dart';
import '../../../size_config.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({
    super.key,
    required this.message,
  });

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20 * 0.75),
        vertical: getProportionateScreenWidth(10),
      ),
      decoration: BoxDecoration(
        color: message.isSender ? buttonColor : Colors.green[300],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        message.text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}