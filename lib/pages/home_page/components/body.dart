import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  var images = {
    "Mountain1.jpg": "Hiking", // image file : values for text
    "Mountain2.jpg": "Kayaking",
    "Mountain3.jpg": "Camping",
    "tezos1.jpg": "Snorkling",
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: Text("Denai Hiking", style: TextStyle(fontSize: getProportionateScreenWidth(21), fontWeight: FontWeight.bold),),
            ),
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
                    child: Icon(
                      Icons.list_outlined,
                      color: headingColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
            // Tab Bar ///
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: _tabController,
                  labelColor: buttonColor,
                  unselectedLabelColor: textColor,
                  isScrollable: true,
                  labelPadding: EdgeInsets.only(left: getProportionateScreenWidth(20), right: getProportionateScreenWidth(20),),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: CircleTabIndicator(color: buttonColor, radius: 4),
                  tabs: const [
                    Tab(
                        text: "Popular",
                      ),
                      Tab(
                        text: "Mountain",
                      ),
                      Tab(
                        text: "Hill",
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Untuk indicator punya shape
class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({
    //constructor
    required this.color,
    required this.radius,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(
      color: color,
      radius: radius,
    );
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({
    //constructor
    required this.color,
    required this.radius,
  });

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;

    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius); // untuk position circle
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
