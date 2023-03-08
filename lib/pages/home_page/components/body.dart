import 'package:flutter/material.dart';

import '../../../components/secction_title.dart';
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
              child: Text(
                "Denai Hiking",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(21),
                    fontWeight: FontWeight.bold),
              ),
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
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),

            //--- TAB BAR --- ///
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: _tabController,
                  labelColor: buttonColor,
                  unselectedLabelColor: textColor,
                  isScrollable: true,
                  labelPadding: EdgeInsets.only(
                    left: getProportionateScreenWidth(20),
                    right: getProportionateScreenWidth(20),
                  ),
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
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),

            //--- Popular container ----//
            Container(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(0),
              ),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: popularData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: EdgeInsets.only(
                            left: getProportionateScreenWidth(20),
                          ),
                          child: SizedBox(
                            height: getProportionateScreenHeight(350),
                            width: getProportionateScreenWidth(200),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset(
                                    popularData[index].image,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          const Color(0xFF343434)
                                              .withOpacity(0.15),
                                          const Color(0xFF343434)
                                              .withOpacity(0.4),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    left: 0,
                                    right: 0,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal:
                                            getProportionateScreenWidth(10),
                                        vertical:
                                            getProportionateScreenWidth(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: AlignmentDirectional
                                                .centerStart,
                                            child: Text(
                                              popularData[index].title,
                                              style: TextStyle(
                                                  fontSize:
                                                      getProportionateScreenWidth(
                                                          14),
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on_outlined,
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                              ),
                                              Text(
                                                popularData[index].text,
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ));
                    },
                  ),

                  // Mountain container
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(
                          right: getProportionateScreenWidth(15),
                          top: getProportionateScreenWidth(10),
                        ),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage("image/Mountain2.jpg"),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                  // Hill Section
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(
                          right: getProportionateScreenWidth(15),
                          top: getProportionateScreenWidth(10),
                        ),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage("image/Mountain3.jpg"),
                              fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),

            // Explore More Container
            SectionTitle(
              text: 'Explore more',
              press: () {},
            ),

            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            // Container Icon untuk setiap categories
            Container(
              height: 200,
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: getProportionateScreenWidth(20),
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      right: getProportionateScreenWidth(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    "image/${images.keys.elementAt(index)}"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Text(
                          images.values.elementAt(index),
                          style: const TextStyle(color: textColor),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
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

class Onboard {
  final String image, title, text;

  Onboard({
    required this.image,
    required this.title,
    required this.text,
  });
}

final List<Onboard> popularData = [
  Onboard(
    image: "image/Mountain1.jpg",
    title: "Gunung Kinabalu",
    text: "Sabah",
  ),
  Onboard(
    image: "image/Mountain2.jpg",
    title: "Gunung Korbu",
    text: "Negeri Sembilan",
  ),
  Onboard(
    image: "image/Mountain3.jpg",
    title: "Bukit Broga",
    text: "Selangor",
  ),
];
