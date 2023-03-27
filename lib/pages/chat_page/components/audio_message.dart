import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/chat.dart';
import '../../../size_config.dart';

class AudioMessage extends StatelessWidget {
  const AudioMessage({super.key, required this.message});
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      // height: 30,
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20 * 0.75),
        vertical: getProportionateScreenWidth(20 / 2.5),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: message.isSender ? buttonColor : Colors.green[300]),
      child: Row(
        children: [
         Icon(
            Icons.play_arrow,
            color:  message.isSender? Colors.white : buttonColor,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: message.isSender ? Colors.white : buttonColor.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(height: 8, width: 8, decoration: BoxDecoration(color: message.isSender ? Colors.white : buttonColor, shape: BoxShape.circle),))
                ],
              ),
            ),
          ),
          Text("0.37",style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}