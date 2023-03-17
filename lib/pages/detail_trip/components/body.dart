import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';
import '../../../components/back_button.dart';
import '../../../models/trip.dart';
import '../../../size_config.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/responsive_button.dart';
import 'trip_image.dart';

class Body extends StatelessWidget {
  final Trip trip;
  const Body({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          // toolbarHeight: 90,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
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
              trip.images[0],
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 15,
            ),
            width: MediaQuery.of(context).size.width,
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          trip.title,
                          style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: headingColor,
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),

                        //-- Icon dan organizer --//
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.person_2_outlined,
                              color: textColor.withOpacity(0.5),
                              size: 22,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              trip.organizer,
                              style: const TextStyle(
                                  color: textColor, fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // -- AVATAR --//
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Image.asset(
                        trip.images[0],
                        fit: BoxFit.cover,
                      ),
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
                                "Location",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: headingColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(trip.location),
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
                                "Date",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: headingColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(trip.date),
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
                                "People Joined",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: headingColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text.rich(TextSpan(text: "${trip.people}"))
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
                          trip.description,
                          style: const TextStyle(color: textColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(30),
                    ),
              ],
              
            ),
            
            
          ),
        
        ),
        // Positioned(
        //     bottom: 10,
        //     left: 20,
        //     right: 20,
        //     child: Row(children: [
        //       AppButtons(
        //         size: 60,
        //         color: Colors.green[200]!,
        //         backgroundColor: Colors.white,
        //         borderColor: Colors.green[200]!,
        //         isIcon: true,
        //         icon: Icons.favorite_border,
        //       ),
        //      const SizedBox(
        //         width: 20,
        //       ),
        //       ResponsiveButton(
        //         isResponsive: true,
        //       ),
        //     ],),
        // )
      ],
    ));

    // body: Container(
    //   width: double.maxFinite,
    //   height: double.maxFinite,
    //   child: Stack(
    //     children: [
    //       Positioned(
    //         left: 0,
    //         right: 0,
    //         child: TripImages(trip: trip),
    //       ),
    //       Positioned(
    //         top: 320,
    //         left: 0,
    //         bottom: 80,
    //         right: 0,
    //         child: Container(
    //           padding: const EdgeInsets.only(
    //             left: 20,
    //             right: 20,
    //             top: 30,
    //           ),
    //           width: MediaQuery.of(context).size.width,
    //           height: 500,
    //           decoration: const BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.only(
    //               topLeft: Radius.circular(30),
    //               topRight: Radius.circular(30),
    //             ),
    //           ),
    //           child: SingleChildScrollView(
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: [
    //                         Text(
    //                           trip.title,
    //                           style: TextStyle(
    //                             fontSize: 23,
    //                             fontWeight: FontWeight.bold,
    //                             color: Colors.black.withOpacity(0.8),
    //                           ),
    //                         ),
    //                         SizedBox(
    //                           height: getProportionateScreenHeight(10),
    //                         ),

    //                         //-- Icon dan organizer --//
    //                         Row(
    //                           crossAxisAlignment: CrossAxisAlignment.end,
    //                           children: [
    //                             Icon(
    //                               Icons.person_2_outlined,
    //                               color: textColor.withOpacity(0.5),
    //                               size: 22,
    //                             ),
    //                             const SizedBox(
    //                               width: 5,
    //                             ),
    //                             Text(
    //                               trip.organizer,
    //                               style: const TextStyle(
    //                                   color: textColor, fontSize: 16),
    //                             ),
    //                           ],
    //                         ),
    //                       ],
    //                     ),
    //                     Container(
    //                       width: 40,
    //                       height: 40,
    //                       decoration: BoxDecoration(
    //                         color: Colors.blue,
    //                         borderRadius: BorderRadius.circular(50),

    //                       ),
    //                       child: Image.asset(trip.images[0], fit: BoxFit.cover,),
    //                     )
    //                   ],
    //                 ),

    //                 SizedBox(
    //                   height: getProportionateScreenHeight(20),
    //                 ),
    //                 IntrinsicHeight(
    //                   child: Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                     children: [
    //                       Column(
    //                         children: [
    //                           const Text(
    //                             "Location",
    //                             style: TextStyle(
    //                                 fontSize: 16,
    //                                 color: headingColor,
    //                                 fontWeight: FontWeight.bold),
    //                           ),
    //                           const SizedBox(
    //                             height: 4,
    //                           ),
    //                           Text(trip.location),
    //                         ],
    //                       ),
    //                       const VerticalDivider(
    //                         color: textColor,
    //                         thickness: 0.2,
    //                         indent: 5,
    //                         endIndent: 5,
    //                         width: 0,
    //                       ),
    //                       Column(
    //                         children: [
    //                           const Text(
    //                             "Date",
    //                             style: TextStyle(
    //                                 fontSize: 16,
    //                                 color: headingColor,
    //                                 fontWeight: FontWeight.bold),
    //                           ),
    //                           const SizedBox(
    //                             height: 4,
    //                           ),
    //                           Text(trip.date),
    //                         ],
    //                       ),
    //                       const VerticalDivider(
    //                         color: textColor,
    //                         thickness: 0.2,
    //                         indent: 5,
    //                         endIndent: 5,
    //                         width: 0,
    //                       ),
    //                       Column(
    //                         children: [
    //                           const Text(
    //                             "People Joined",
    //                             style: TextStyle(
    //                                 fontSize: 16,
    //                                 color: headingColor,
    //                                 fontWeight: FontWeight.bold),
    //                           ),
    //                           const SizedBox(
    //                             height: 4,
    //                           ),
    //                           Text.rich(TextSpan(text: "${trip.people}"))
    //                         ],
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 SizedBox(
    //                   height: getProportionateScreenHeight(20),
    //                 ),
    //                 // -- Description container -- //
    //                 Column(
    //                   mainAxisAlignment: MainAxisAlignment.start,
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     const Text(
    //                       "Description",
    //                       style: TextStyle(
    //                           fontSize: 18,
    //                           color: headingColor,
    //                           fontWeight: FontWeight.bold),
    //                     ),
    //                     SizedBox(
    //                       height: getProportionateScreenHeight(5),
    //                     ),
    //                     Text(
    //                       trip.description,
    //                       style: const TextStyle(color: textColor),
    //                     ),
    //                   ],
    //                 ),
    //                 SizedBox(
    //                   height: getProportionateScreenHeight(30),
    //                 ),

    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //       Positioned(
    //         bottom: 10,
    //         left: 20,
    //         right: 20,
    //         child: Row(children: [
    //           AppButtons(
    //             size: 60,
    //             color: Colors.green[200]!,
    //             backgroundColor: Colors.white,
    //             borderColor: Colors.green[200]!,
    //             isIcon: true,
    //             icon: Icons.favorite_border,
    //           ),
    //          const SizedBox(
    //             width: 20,
    //           ),
    //           ResponsiveButton(
    //             isResponsive: true,
    //           ),
    //         ]),
    //       )
    //     ],
    //   ),
    // ),
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
