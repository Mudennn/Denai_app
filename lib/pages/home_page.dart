import 'package:flutter/material.dart';

// Home page sebuah page yang display tentang discover, explore dengan trip detail

class HomePage extends StatefulWidget {
  static String routeName = "/home";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // List of image
  var images = {
    "Mountain1.jpg": "Hiking", // image file : values for text
    "Mountain2.jpg": "Kayaking",
    "Mountain3.jpg": "Camping",
    "tezos1.jpg": "Snorkling",
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: 3, vsync: this); // vsync refer to context
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sidebar menu dan Avatar
            Container(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                children: [
                  const Text(
                    "Denai Hiking",
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                  // Container(
                  // margin: const EdgeInsets.only(right: 20),
                  // width: 50,
                  // height: 50,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),
                  //   color: Colors.grey.withOpacity(0.5),
                  // ),
                  //  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Discover text
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const Text(
                "Discover",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Tab Bar
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: CircleTabIndicator(color: Colors.green, radius: 4),
                  tabs: [
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
            //Popular container
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: const DecorationImage(
                                image: AssetImage("image/Mountain1.jpg"),
                                fit: BoxFit.cover)),
                      );
                    },
                  ),
                  Text("Bye"),
                  Text("There"),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Explore More container
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Explore more",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 16, color: Colors.green[200]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100, // kalau guna listview pastikan ada height dgn width
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4, // dia kira loop
                  itemBuilder: (context, index) {
                    return Container(
                      //container gambar dan text
                      margin: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // margin: const EdgeInsets.only(
                            //   right: 50,
                            // ),
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage("image/" +
                                        images.keys.elementAt(index)),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Container(
                            child: Text(
                              images.values.elementAt(index),
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
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
