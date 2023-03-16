import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/place.dart';
import '../../../size_config.dart';

class PlaceImages extends StatefulWidget {
  const PlaceImages({
    super.key,
    required this.place,
  });

  final Place place;

  @override
  State<PlaceImages> createState() => _PlaceImagesState();
}

class _PlaceImagesState extends State<PlaceImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              widget.place.images[selectedImage],
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ...List.generate(
        //         widget.place.images.length, (index) => buildSmallPreview(index))
        //   ],
        // )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          right: getProportionateScreenWidth(15),
        ),
        padding: EdgeInsets.all(
          getProportionateScreenHeight(8),
        ),
        height: getProportionateScreenHeight(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: selectedImage == index ? buttonColor : Colors.transparent),
        ),
        child: Image.asset(
          widget.place.images[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
