import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/chat.dart';

class VideoMessage extends StatelessWidget {
  const VideoMessage({super.key, required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            // -- IMAGE -- //
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/image/Mountain1.jpg",
                fit: BoxFit.cover,
                width: 200,
              ),
            ),
            // -- PLAY BUTTON -- //
            Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  color: buttonColor, shape: BoxShape.circle),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}