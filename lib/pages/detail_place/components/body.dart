import 'package:denai_app/constant.dart';
import 'package:denai_app/pages/home_page/components/list_mountain_and_hill_container.dart';
import 'package:flutter/material.dart';

import '../../../models/place.dart';
import '../../../size_config.dart';
import 'place_image.dart';

class Body extends StatelessWidget {
  final Place place;
  const Body({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: whiteColor,
                ),
                padding: const EdgeInsets.only(top: 12, bottom: 8),
                child: Divider(
                  height: 1,
                  thickness: 5,
                  indent: 120,
                  endIndent: 120,
                  color: textColor.withOpacity(0.05),
                ),
              ),
            ),
            backgroundColor: buttonColor,
            automaticallyImplyLeading: false,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                place.images[0],
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                place.location,
                                style: const TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: headingColor,
                                ),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(8),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: textColor.withOpacity(0.5),
                                size: 18,
                              ),
                              Text(
                                place.state,
                                style: const TextStyle(
                                    color: textColor, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // -- AVATAR --//
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(place.images[0]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Length",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: headingColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text.rich(TextSpan(text: "${place.length}km"))
                          ],
                        ),
                        const VerticalDivider(
                          color: textColor,
                          thickness: 0.2,
                          indent: 5,
                          endIndent: 5,
                          width: 0,
                        ),
                        Column(
                          children: [
                            const Text(
                              "Elavation",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: headingColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text.rich(
                                TextSpan(text: "${place.elavation.toInt()}m"))
                          ],
                        ),
                        const VerticalDivider(
                          color: textColor,
                          thickness: 0.2,
                          indent: 5,
                          endIndent: 5,
                          width: 0,
                        ),
                        Column(
                          children: [
                            const Text(
                              "Difficulty",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: headingColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(place.difficulty,
                                style: TextStyle(
                                    color: place.difficulty == "Hard"
                                        ? Colors.red
                                        : place.difficulty == "Moderate"
                                            ? Colors.yellow
                                            : Colors.green))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  // -- Description container -- //
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 18,
                            color: headingColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(5),
                      ),
                      Text(
                        place.description,
                        style: const TextStyle(color: textColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Upcoming Trip",
                        style: TextStyle(
                            fontSize: 18,
                            color: headingColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
    // return Scaffold(
    //   body: SizedBox(
    //     width: double.maxFinite,
    //     height: double.maxFinite,
    //     child: Stack(
    //       children: [
    //         Positioned(
    //           left: 0,
    //           right: 0,
    //           child: PlaceImages(place: place),
    //         ),
    //         Positioned(
    //           top: 320,
    //           left: 0,
    //           bottom: 0,
    //           right: 0,
    //           child: Container(
    //             padding: const EdgeInsets.only(
    //               left: 20,
    //               right: 20,
    //               top: 30,
    //             ),
    //             width: MediaQuery.of(context).size.width,
    //             height: 500,
    //             decoration: const BoxDecoration(
    //               color: Colors.white,
    //               borderRadius: BorderRadius.only(
    //                 topLeft: Radius.circular(30),
    //                 topRight: Radius.circular(30),
    //               ),
    //             ),
    //             child: SingleChildScrollView(
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Column(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                       Text(
    //                         place.location,
    //                         style: TextStyle(
    //                           fontSize: 23,
    //                           fontWeight: FontWeight.bold,
    //                           color: Colors.black.withOpacity(0.8),
    //                         ),
    //                       ),
    //                       // Column(
    //                       //   children: const[
    //                       //     Text(
    //                       //       "RM 250",
    //                       //       style: TextStyle(
    //                       //           fontSize: 23,
    //                       //           fontWeight: FontWeight.bold,
    //                       //           color: Colors.green),
    //                       //     ),
    //                       //     Text(
    //                       //       "/per person",
    //                       //       style:
    //                       //           TextStyle(color: Colors.grey, fontSize: 12),
    //                       //     )
    //                       //   ],
    //                       // ),
    //                     ],
    //                   ),
    //                   SizedBox(
    //                     height: getProportionateScreenHeight(10),
    //                   ),

    //                   //-- Icon dan negeri --//
    //                   Row(
    //                     children: [
    //                       Icon(
    //                         Icons.location_on_outlined,
    //                         color: textColor.withOpacity(0.5),
    //                         size: 18,
    //                       ),
    //                       Text(
    //                         place.state,
    //                         style:
    //                             const TextStyle(color: textColor, fontSize: 16),
    //                       ),
    //                     ],
    //                   ),
    //                   SizedBox(
    //                     height: getProportionateScreenHeight(20),
    //                   ),
    //                   IntrinsicHeight(
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                       children: [
    //                         Column(
    //                           children: [
    //                             const Text(
    //                               "Length",
    //                               style: TextStyle(
    //                                   fontSize: 16,
    //                                   color: headingColor,
    //                                   fontWeight: FontWeight.bold),
    //                             ),
    //                             const SizedBox(
    //                               height: 4,
    //                             ),
    //                             Text.rich(TextSpan(text: "${place.length}km"))
    //                           ],
    //                         ),
    //                         const VerticalDivider(
    //                           color: textColor,
    //                           thickness: 0.2,
    //                           indent: 5,
    //                           endIndent: 5,
    //                           width: 0,
    //                         ),
    //                         Column(
    //                           children: [
    //                             const Text(
    //                               "Elavation",
    //                               style: TextStyle(
    //                                   fontSize: 16,
    //                                   color: headingColor,
    //                                   fontWeight: FontWeight.bold),
    //                             ),
    //                             const SizedBox(
    //                               height: 4,
    //                             ),
    //                             Text.rich(TextSpan(text: "${place.elavation}m"))
    //                           ],
    //                         ),
    //                         const VerticalDivider(
    //                           color: textColor,
    //                           thickness: 0.2,
    //                           indent: 5,
    //                           endIndent: 5,
    //                           width: 0,
    //                         ),
    //                         Column(
    //                           children: [
    //                             const Text(
    //                               "Difficulty",
    //                               style: TextStyle(
    //                                   fontSize: 16,
    //                                   color: headingColor,
    //                                   fontWeight: FontWeight.bold),
    //                             ),
    //                             const SizedBox(
    //                               height: 4,
    //                             ),
    //                             Text(place.difficulty,
    //                                 style: TextStyle(
    //                                     color: place.difficulty == "Hard"
    //                                         ? Colors.red
    //                                         : place.difficulty == "Moderate"
    //                                             ? Colors.yellow
    //                                             : Colors.green))
    //                           ],
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: getProportionateScreenHeight(20),
    //                   ),
    //                   // -- Description container -- //
    //                   Column(
    //                     mainAxisAlignment: MainAxisAlignment.start,
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       const Text(
    //                         "Description",
    //                         style: TextStyle(
    //                             fontSize: 18,
    //                             color: headingColor,
    //                             fontWeight: FontWeight.bold),
    //                       ),
    //                       SizedBox(
    //                         height: getProportionateScreenHeight(5),
    //                       ),
    //                       Text(
    //                         place.description,
    //                         style: const TextStyle(color: textColor),
    //                       ),
    //                     ],
    //                   ),
    //                   SizedBox(
    //                     height: getProportionateScreenHeight(20),
    //                   ),
    //                   Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: const [
    //                       Text(
    //                         "Upcoming Trip",
    //                         style: TextStyle(
    //                             fontSize: 18,
    //                             color: headingColor,
    //                             fontWeight: FontWeight.bold),
    //                       ),
    //                     ],
    //                   ),
    //                   SizedBox(
    //                     height: getProportionateScreenHeight(30),
    //                   )
    //                 ],
    //               ),
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}


// SingleChildScrollView(
//       child: Column(
//         children: [
//           PlaceImages(place: place),
//           Container(
//             margin: EdgeInsets.only(top: getProportionateScreenWidth(20),),
//             width: double.infinity,
//             height: 300,
//             decoration: BoxDecoration(
//               color: Colors.blue
//             ),
//           )
//         ],
//       ),
//     );