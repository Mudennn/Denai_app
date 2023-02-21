import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController =
        TabController(length: 3, vsync: this); // vsync refer to context
    return Scaffold(
      body: Column(
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
            height: 40,
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
            height: 30,
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
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              Container(
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: const DecorationImage(image: AssetImage("image/Mountain1.jpg"))
                ),
              ),
              Text("Bye"),
              Text("There"),
            ]),
          ),
        ],
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

    final Offset circleOffset = Offset(configuration.size!.width/2 - radius/2, configuration.size!.height-radius); // untuk position circle
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }
}
