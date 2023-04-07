import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';
import '../../../models/trip.dart';
import '../../../size_config.dart';
import '../../detail_trip/detail_trip_page.dart';
import 'activity_card.dart';
import 'calender.dart';

// page yang ada calender widget dan trips hari ini

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Trip> demoList = demoTrip;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(16)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --  CALANDER CONTAINER -- //
              const CalenderPage(),
              SizedBox(height: getProportionateScreenHeight(32),),
              const Text(
                "Today Trips",
                style: TextStyle(
                    fontSize: 20,
                    color: headingColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              // --ACTIVITY GRID--//
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: demoTrip.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .65,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 10),
                itemBuilder: (context, index) => ActivityCard(
                  press: () => Navigator.pushNamed(
                    context,
                    DetailTripPage.routeName,
                    arguments: TripDetailArgument(trip: demoTrip[index]),
                  ),
                  trip: demoTrip[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
