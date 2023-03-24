import 'package:denai_app/constant.dart';
import 'package:denai_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../components/oval_bottom_clipper.dart';
import '../../../models/place.dart';
import 'follow_button.dart';
import 'gallery_card.dart';
import 'name_and_tag.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // bool _isGallerySelected = true;
  final double coverHeight = 100;
  final double profileHeight = 100;
  final double profileHeight2 = 110;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;
    final bottom = profileHeight / 2;

    return Scaffold(
      body: ListView(
        children: [
          profileImage(top, bottom),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Column(
            children: [
              // -- NAME and TAG CONTAINER --//
              const NameAndTagContainer(),

              SizedBox(
                height: 80,
                width: 350,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 80,
                        child: statColumn("1k", "Following"),
                      ),
                      const VerticalDivider(
                        color: textColor,
                        thickness: 0.2,
                        indent: 20,
                        endIndent: 20,
                        width: 0,
                      ),
                      SizedBox(
                        width: 80,
                        child: statColumn("100k", "Followers"),
                      ),
                      const VerticalDivider(
                        color: textColor,
                        thickness: 0.2,
                        indent: 20,
                        endIndent: 20,
                        width: 0,
                      ),
                      SizedBox(
                        width: 80,
                        child: statColumn("68", "Trips"),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
              // -- FOLLOW AND UNFOLLOW BUTTON --//
              const FollowButton(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              // -- GALLERY CARD CONTAINER --//
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: demoPlace.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
                itemBuilder: (context, index) => GalleryCard(
                  press: () {},
                  place: demoPlace[index],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(10),
              ),
            ],
          ),
        ],
      ),
    );

//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         InkWell(
//                           onTap: () {
//                             setState(() {
//                               _isGallerySelected = !_isGallerySelected;
//                             });
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 30, vertical: 8),
//                             child: Text(
//                               "Gallery",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 16,
//                                   color: _isGallerySelected
//                                       ? buttonColor
//                                       : Colors.grey),
//                             ),
//                           ),
//                         ),
//                         InkWell(
//                           onTap: () {
//                             setState(() {
//                               _isGallerySelected = !_isGallerySelected;
//                             });
//                           },
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 30, vertical: 8),
//                             child: Text(
//                               "Achivements",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 16,
//                                   color: _isGallerySelected
//                                       ? Colors.grey
//                                       : buttonColor),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//
  }

  Column statColumn(String total, String name) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          total,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black87),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 12,
            color: textColor.withOpacity(0.5),
          ),
        ),
      ],
    );
  }

  Stack profileImage(double top, double bottom) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: coverHeight,
          margin: EdgeInsets.only(bottom: bottom),
          child: ClipPath(
            clipper: OvalBottomClipper(),
            child: Image.asset(
              "assets/image/Mountain1.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: top,
          child: CircleAvatar(
            radius: profileHeight2 / 2,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: profileHeight / 2,
              backgroundColor: Colors.grey,
              backgroundImage: Image.asset("assets/image/Mountain1.jpg").image,
            ),
          ),
        )
      ],
    );
  }
}






