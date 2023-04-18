import 'package:flutter/material.dart';

import '../../../size_config.dart';
class PopularContainer extends StatelessWidget {
  const PopularContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: popularData.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: Padding(
              padding: EdgeInsets.only(
                right: getProportionateScreenWidth(8),
              ),
              child: SizedBox(
                height: getProportionateScreenHeight(350),
                width: getProportionateScreenWidth(200),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
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
                                  .withOpacity(0.6),
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
                                        .withOpacity(0.7),
                                        size: 13,

                                  ),
                                  Text(
                                    popularData[index].text,
                                    style: TextStyle(
                                      color: Colors.white
                                          .withOpacity(0.7),
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

final List<Onboard> popularData = [
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
  Onboard(
    image: "assets/image/Mountain3.jpg",
    title: "Bukit Broga",
    text: "Selangor",
  ),
];
