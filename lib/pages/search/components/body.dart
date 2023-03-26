import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/trip.dart';
import '../../../size_config.dart';
import '../../detail_trip/detail_trip_page.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Trip> demoList = demoTrip;

  List<Trip> foundUsers = [];
  @override
  void initState() {
    foundUsers = demoList;
    super.initState();
  }

  void runFilter(String enteredKeyword) {
    List<Trip> results = [];
    if (enteredKeyword.isEmpty) {
      results = demoList;
    } else {
      results = demoList
          .where((trip) =>
              trip.title.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: textColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15)
              ),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: "Search Trip",
                  suffixIcon: Icon(Icons.search_outlined),
                ),
                onChanged: (value) => runFilter(value),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: foundUsers.length == 0
                  ? const Center(
                      child: Text("No result"),
                    )
                  : ListView.builder(
                      itemCount: foundUsers.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () => Navigator.pushNamed(
                          context,
                          DetailTripPage.routeName,
                          arguments: TripDetailArgument(trip: demoTrip[index]),
                        ),
                        child: Card(
                          key: ValueKey(foundUsers[index]),
                          color: const Color.fromARGB(255, 247, 245, 245),
                          elevation: 1,
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: ListTile(
                            leading: Text(
                              foundUsers[index].title,
                              style: const TextStyle(color: textColor),
                            ),
                            title: Text(foundUsers[index].date),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
