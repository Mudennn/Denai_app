import 'package:flutter/material.dart';

import '../../../components/back_button.dart';
import '../../../constant.dart';
import '../../../size_config.dart';


class ChatGroupBar extends StatelessWidget {
  const ChatGroupBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: buttonColor,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          BackBtn(
            iconData: Icons.arrow_back_ios_new_outlined,
            press: () =>  Navigator.pop(context),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          CircleAvatar(
            backgroundImage: AssetImage("assets/image/Mountain1.jpg"),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trip Gunung Dato",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "tap here for group info",
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
