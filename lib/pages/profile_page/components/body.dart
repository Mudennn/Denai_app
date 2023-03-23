import 'package:denai_app/constant.dart';
import 'package:denai_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/back_button.dart';
import '../../../components/oval_bottom_clipper.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned(
            top: 225,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  "John Doe",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Hikers",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: textColor.withOpacity(0.5),
                  ),
                ),
                // SizedBox(height: getProportionateScreenHeight(20),),
                SizedBox(
                  height: 80,
                  // width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 90, child: statColumn('68', 'Trips')),
                      SizedBox(width: 90, child: statColumn('1.2k', 'Followers')),
                      SizedBox(width: 90, child: statColumn('90', 'Following'),),
                    ],
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(110),
                        vertical: getProportionateScreenWidth(16),),
                    child: const Text(
                      "Follow",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text("Gallery", style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                    Text("Achivements", style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: -60,
            left: 0,
            right: 0,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipPath(
                clipper: OvalBottomClipper(),
                child: Image.asset("assets/image/Mountain1.jpg", fit: BoxFit.cover,),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: BackBtn(iconData: Icons.arrow_back_ios_new_outlined, press: (){}),),
                IconButton(onPressed: (){}, icon: const Icon(Icons.settings_outlined, color: Colors.white,),), 
              ],
            ),
          ),
          Positioned(
            top: 100,
            right: 0,
            left: 0,
            child: CircleAvatar(
              radius: 56,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: Image.asset("assets/image/Mountain1.jpg").image,
              ),
            ),
          )
        ],
      ),
    );
  }

  Column statColumn(String total, String name) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          total,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 12,
            color: textColor.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
