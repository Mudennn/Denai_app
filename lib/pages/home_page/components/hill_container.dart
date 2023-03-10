import 'package:flutter/material.dart';

import '../../../size_config.dart';

class HillContainer extends StatelessWidget {
  const HillContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: hillData.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: Padding(
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
                        hillData[index].image,
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
                                  hillData[index].title,
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
                                        size: 13,
                                  ),
                                  Text(
                                    hillData[index].text,
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
              )),
        );
      },
    );
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

final List<Onboard> hillData = [
  
  Onboard(
    image: "assets/image/Mountain3.jpg",
    title: "assets/Bukit Broga",
    text: "Selangor",
  ),
  Onboard(
    image: "assets/image/Mountain1.jpg",
    title: "Gunung Kinabalu",
    text: "Sabah",
  ),
   Onboard(
    image: "assets/image/Mountain2.jpg",
    title: "Gunung Korbu",
    text: "Negeri Sembilan",
  ),
];
