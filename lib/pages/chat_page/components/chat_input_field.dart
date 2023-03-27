import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(10),
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
          offset: Offset(0, 4), 
        blurRadius: 32, 
        color: Color.fromARGB(255, 220, 240, 232),),],
      ),
      child: SafeArea(
        child: Row(
          children: [
            // -- MIC ICON -- //
            const Icon(
              Icons.mic_outlined,
              color: buttonColor,
            ),
            const SizedBox(
              width: 20,
            ),
            // -- TEXT FIELD --//
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20 * 0.75),
                // height: 50,
                decoration: BoxDecoration(
                  color: buttonColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.sentiment_satisfied_alt_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20 / 4,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.attach_file_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20 / 4,
                    ),
                    Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
