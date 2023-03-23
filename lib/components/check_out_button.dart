import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';
import 'default_button.dart';

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      // height: 85,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(0.15)),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text.rich(
                      TextSpan(text: "Total: "),
                    ),
                    Text.rich(
                      TextSpan(
                        text: "RM 350",
                        style: TextStyle(fontSize: 16, color: buttonColor, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                  
                ),
                SizedBox(
                  width: getProportionateScreenWidth(190),
                  child: DefaultButton(text: 'Check Out', press: () {  }, ),
                )
              ],
              
            )
          ],
        ),
      ),
    );
  }
}