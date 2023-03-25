import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';

import '../../../models/trip.dart';
import '../../../size_config.dart';
import '../../detail_trip/detail_trip_page.dart';
import 'activity_card.dart';

class Body extends StatelessWidget {
  
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),),
            child: const Text("Activity Page", style: TextStyle(fontSize: 22, color: headingColor, fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          //--ACTIVITY GRID--//
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: demoTrip.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: .65, crossAxisSpacing: 20, mainAxisSpacing: 10),
                    itemBuilder: (context, index) => ActivityCard(
                      press: () => Navigator.pushNamed(context, DetailTripPage.routeName, arguments: TripDetailArgument(trip: demoTrip[index] ),),
                      trip: demoTrip[index],
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

