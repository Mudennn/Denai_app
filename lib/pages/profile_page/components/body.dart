import 'package:denai_app/constant.dart';
import 'package:denai_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/back_button.dart';
import '../../../components/oval_bottom_clipper.dart';
import '../../../models/place.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isGallerySelected = true;

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
                // -- NAME -- //
                Text(
                  "John Doe",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 5,
                ),

                // -- TAG Container -- //
                Text(
                  "Hikers",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: textColor.withOpacity(0.5),
                  ),
                ),
                // SizedBox(height: getProportionateScreenHeight(20),),

                //--TRIPS/ Followers / Following Container--//
                SizedBox(
                  height: 80,
                  width: 350,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            width: 80, child: statColumn('1k', 'Following')),
                        const VerticalDivider(
                          color: textColor,
                          thickness: 0.2,
                          indent: 20,
                          endIndent: 20,
                          width: 0,
                        ),
                        SizedBox(
                            width: 80,
                            child: statColumn('120.2k', 'Followers')),
                        const VerticalDivider(
                          color: textColor,
                          thickness: 0.2,
                          indent: 20,
                          endIndent: 20,
                          width: 0,
                        ),
                        SizedBox(
                          width: 80,
                          child: statColumn('68', 'Trips'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                // -- FOLLOW AND UNFOLLOW BUTTON --//
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(8),
                      vertical: getProportionateScreenWidth(5),
                    ),
                    child: const Text(
                      "Follow",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _isGallerySelected = !_isGallerySelected;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 8),
                        child: Text(
                          "Gallery",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: _isGallerySelected
                                  ? buttonColor
                                  : Colors.grey),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _isGallerySelected = !_isGallerySelected;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 8),
                        child: Text(
                          "Achivements",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: _isGallerySelected
                                  ? Colors.grey
                                  : buttonColor),
                        ),
                      ),
                    ),
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
                child: Image.asset(
                  "assets/image/Mountain1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 475,
            right: 20,
            left: 20,
            bottom: 0,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                ...List.generate(
                  demoPlace.length,
                  (index) => GalleryImage(place: demoPlace[index]),
                )
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: BackBtn(
                      iconData: Icons.arrow_back_ios_new_outlined,
                      press: () {}),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                  ),
                ),
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
                backgroundImage:
                    Image.asset("assets/image/Mountain1.jpg").image,
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
}

class GalleryImage extends StatelessWidget {
  const GalleryImage({
    super.key,
    required this.place,
  });
  final Place place;
  @override
  Widget build(BuildContext context) {
    // return GridView.count(crossAxisCount: 3,
    // children:
    //   List.generate(3, (index) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(place.images[0]),
      )),
    );
    //     })
    //   );
  }
}
