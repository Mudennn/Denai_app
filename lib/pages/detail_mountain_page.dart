import 'package:flutter/material.dart';

import '../widgets/app_button.dart';
import '../widgets/responsive_button.dart';

// page untuk tengok detail mountain atau hill beserta list trip
class DetailMountainPage extends StatefulWidget {
  const DetailMountainPage({super.key});

  @override
  State<DetailMountainPage> createState() => _DetailMountainPageState();
}

class _DetailMountainPageState extends State<DetailMountainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            //Image box
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("image/Mountain1.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            // Menu Icon
            Positioned(
              left: 5,
              top: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            // Card mountain description
            Positioned(
              top: 320,
              left: 0,
              bottom: 80,
              right: 0, // untuk bagi dia scroll kena ada semua ni
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 30,
                ),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                // Data container
                child: SingleChildScrollView(
                  // dan kena wrap column kepada widget
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Mountain Name and price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mount Kinabalu",
                            style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.8),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "RM 250",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                              Text(
                                "/per person",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Location
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Kota Kinabalu, Sabah",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                     
                     
                      const SizedBox(
                        height: 25,
                      ),
                      // People container
                      const Text(
                        "People",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Number of people in your group",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Number selection
                  
                      const SizedBox(
                        height: 20,
                      ),
                      // Description
                      const Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "You must go fro travel. Travelling helps get rid of pressure. Go to the mountains to see the nature. brooooooooooooooooooooooooooo",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Bottom button
            Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: Row(children: [
                AppButtons(
                  size: 60,
                  color: Colors.green[200]!,
                  backgroundColor: Colors.white,
                  borderColor: Colors.green[200]!,
                  isIcon: true,
                  icon: Icons.favorite_border,
                ),
               const SizedBox(
                  width: 20,
                ),
                ResponsiveButton(
                  isResponsive: true,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}