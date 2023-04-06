import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constant.dart';

// Page tentang ICON CATEGORIES LIST untuk bolehkan orang pi direct ke activity yang mereka minat

class CategoriesIconList extends StatelessWidget {
  const CategoriesIconList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: SvgPicture.asset(
                  "assets/image/Mountain.svg",
                  height: 40,
                  width: 40,
                  fit: BoxFit.scaleDown,
                  colorFilter:
                      const ColorFilter.mode(buttonColor, BlendMode.srcIn),
                ),
              ),
            ),
            const Text(
              "Mountain",
              style: TextStyle(color: textColor, fontSize: 12),
            )
          ],
        ),
        Column(
          children: [
            GestureDetector(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.cyan[50],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: SvgPicture.asset(
                  "assets/image/Kayak.svg",
                  height: 40,
                  width: 40,
                  fit: BoxFit.scaleDown,
                  colorFilter: const ColorFilter.mode(
                      Color.fromARGB(255, 0, 96, 100), BlendMode.srcIn),
                ),
              ),
            ),
            const Text(
              "Kayaking",
              style: TextStyle(color: textColor, fontSize: 12),
            )
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.orange[50],
                borderRadius: BorderRadius.circular(50),
              ),
              child: SvgPicture.asset(
                "assets/image/Backpack.svg",
                height: 40,
                width: 40,
                fit: BoxFit.scaleDown,
                colorFilter: const ColorFilter.mode(
                    Color.fromARGB(255, 230, 81, 0), BlendMode.srcIn),
              ),
            ),
            const Text(
              "Camping",
              style: TextStyle(color: textColor, fontSize: 12),
            )
          ],
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(50),
              ),
              child: SvgPicture.asset(
                "assets/image/Snorkeling.svg",
                height: 40,
                width: 40,
                fit: BoxFit.scaleDown,
                colorFilter: const ColorFilter.mode(
                    Color.fromARGB(255, 13, 71, 161), BlendMode.srcIn),
              ),
            ),
            const Text(
              "Snorkeling",
              style: TextStyle(color: textColor, fontSize: 12),
            )
          ],
        ),
      ],
    );
    // -- JUST INCASE FOR THE FUTURE -- //
    // return Container(
    //   height: 80,
    //   width: double.maxFinite,
    //   margin: EdgeInsets.only(
    //     left: getProportionateScreenWidth(20),
    //   ),
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: iconData.length,
    //     itemBuilder: (context, index) {
    //       return Container(
    //         // alignment: Alignment.center,
    //         margin: EdgeInsets.only(
    //           right: getProportionateScreenWidth(20),
    //         ),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             Column(
    //               children: [
    //                 Container(
    //                   padding: const EdgeInsets.all(8),
    //                   decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(50),
    //                     color: iconData[index].backgroundColor,
    //                   ),
    //                   child: SvgPicture.asset(
    //                     iconData[index].image,
    //                     colorFilter: ColorFilter.mode(
    //                         iconData[index].color, BlendMode.srcIn),
    //                     height: 40,
    //                     width: 40,
    //                   ),
    //                 ),
    //                 Text(
    //                   iconData[index].title,
    //                   style: const TextStyle(color: textColor),
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}

// class CategoriesIcon {
//   final String image, title;
//   final Color color;
//   final Color backgroundColor;

//   CategoriesIcon(
//       {required this.image,
//       required this.title,
//       required this.color,
//       required this.backgroundColor
//       // required this.text,
//       });
// }

// final List<CategoriesIcon> iconData = [
//   CategoriesIcon(
//     image: "assets/image/Mountain.svg",
//     title: "Hiking",
//     backgroundColor: const Color.fromARGB(255, 232, 245, 233),
//     color: buttonColor,
//   ),
//   CategoriesIcon(
//     image: "assets/image/Kayak.svg",
//     title: "Kayaking",
//     backgroundColor: const Color.fromARGB(255, 224, 247, 250),
//     color: const Color.fromARGB(255, 0, 96, 100),
//   ),
//   CategoriesIcon(
//     image: "assets/image/Backpack.svg",
//     title: "Camping",
//     backgroundColor: const Color.fromARGB(255, 255, 243, 224),
//     color: const Color.fromARGB(255, 230, 81, 0),
//   ),
//   CategoriesIcon(
//     image: "assets/image/Snorkeling.svg",
//     title: "Snorkling",
//     backgroundColor: const Color.fromARGB(255, 227, 242, 253),
//     color: const Color.fromARGB(255, 13, 71, 161),
//   ),
// ];
