import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: SizeConfig.screenWidth * 0.6,
                    height: 50,
                    decoration: BoxDecoration(
                        color: textColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      onChanged: (value) {
                        // search value
                      },
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Search Place",
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(20),
                          vertical: getProportionateScreenHeight(12),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: getProportionateScreenHeight(46),
                    width: getProportionateScreenWidth(46),
                    decoration: BoxDecoration(
                      color: textColor.withOpacity(0.1),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
