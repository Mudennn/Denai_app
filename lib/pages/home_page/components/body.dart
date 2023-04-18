import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../size_config.dart';
import 'categories_icon_list.dart';
import 'mountain_and_hill_container.dart';
import 'popular_container.dart';
import 'popular_place_container.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  // var images = {
  //   "Mountain1.jpg": "Hiking", // image file : values for text
  //   "Mountain2.jpg": "Kayaking",
  //   "Mountain3.jpg": "Camping",
  //   "tezos1.jpg": "Snorkling",
  // };

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenHeight(20),
              ),
              child: Container(
                width: double.maxFinite,
                height: 50,
                decoration: BoxDecoration(
                    color: textColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16)),
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
              // child: Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       width: SizeConfig.screenWidth * 0.6,
              //       height: 50,
              //       decoration: BoxDecoration(
              //           color: textColor.withOpacity(0.1),
              //           borderRadius: BorderRadius.circular(15)),
              //       child: TextField(
              //         onChanged: (value) {
              //           // search value
              //         },
              //         decoration: InputDecoration(
              //           enabledBorder: InputBorder.none,
              //           focusedBorder: InputBorder.none,
              //           hintText: "Search Place",
              //           prefixIcon: const Icon(Icons.search),
              //           contentPadding: EdgeInsets.symmetric(
              //             horizontal: getProportionateScreenWidth(20),
              //             vertical: getProportionateScreenHeight(12),
              //           ),
              //         ),
              //       ),
              //     ),
              //     Container(
              //       height: getProportionateScreenHeight(46),
              //       width: getProportionateScreenWidth(46),
              //       decoration: BoxDecoration(
              //         color: textColor.withOpacity(0.1),
              //       ),
              //       child: const Icon(
              //         Icons.list_outlined,
              //         color: headingColor,
              //       ),
              //     ),
              //   ],
              // ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            const CategoriesIconList(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const PopularPlaceContainer(),
            //--- TAB BAR --- ///
            // Align(
            //   alignment: Alignment.centerLeft,
            //   child: TabBar(
            //     controller: _tabController,
            //     labelColor: buttonColor,
            //     unselectedLabelColor: textColor,
            //     isScrollable: true,
            //     labelPadding: EdgeInsets.only(
            //       left: getProportionateScreenWidth(20),
            //       right: getProportionateScreenWidth(20),
            //     ),
            //     indicatorSize: TabBarIndicatorSize.label,
            //     indicator: CircleTabIndicator(color: buttonColor, radius: 4),
            //     tabs: const [
            //       Tab(
            //         text: "Popular",
            //       ),
            //       Tab(
            //         text: "Mountain",
            //       ),
            //       Tab(
            //         text: "Hill",
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: getProportionateScreenHeight(20),
            // ),

            //--- Popular container ----//
            // Container(
            //   padding: EdgeInsets.only(
            //     left: getProportionateScreenWidth(0),
            //   ),
            //   height: 300,
            //   width: double.maxFinite,
            //   child: TabBarView(
            //     controller: _tabController,
            //     children: const [
            //       PopularContainer(),
            //       // Mountain container
            //       MountainContainer(),
            //       // Hill Section
            //       HillContainer(),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: getProportionateScreenHeight(32),
            ),

            // Explore More Container
            // SectionTitle(
            //   text: 'Explore more',
            //   press: () {},
            // ),
            // SizedBox(
            //   height: getProportionateScreenHeight(20),
            // ),
            // // Container Icon untuk setiap categories
            // const ExploreMoreContainer(),
            // SizedBox(
            //   height: getProportionateScreenHeight(20),
            // ),

            // const ListTripContainer(),

            // SizedBox(
            //   height: getProportionateScreenHeight(20),
            // ),

            
            // const ListMountainAndHillContainer(),
           
            // -- List Mountain and hill CONTAINER -- //
            const MountainAndHillContainer(),

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
