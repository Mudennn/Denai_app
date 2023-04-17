import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../models/trip.dart';
import '../../detail_trip/detail_trip_page.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSearch(
          context: context,
          delegate: CustomSearchDelegate(),
        );
      },
      child: Container(
      //  padding: EdgeInsets.all(8),
        // decoration: BoxDecoration(
        //     color: Colors.grey.withOpacity(0.2),
        //     borderRadius: BorderRadius.circular(50)),
        child: const Icon(Icons.search_outlined, color: headingColor,),
      ),
    );
    // );
    // return AppBar(
    //   automaticallyImplyLeading: false,
    //   title: const Text("Denai", style: TextStyle(color: Colors.black)),
    //   actions: [
    //     IconButton(
    //       onPressed: () {
    //         showSearch(
    //           context: context,
    //           delegate: CustomSearchDelegate(),
    //         );
    //       },
    //       icon: const Icon(Icons.search_outlined),
    //     ),
    //   ],
    // );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<Trip> demoList = demoTrip;
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Trip> matchQuery = [];
    for (var trip in demoTrip) {
      if (trip.title.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(trip);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result.title),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Trip> matchQuery = [];
    for (var trip in demoTrip) {
      if (trip.title.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(trip);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailTripPage.routeName,
            arguments: TripDetailArgument(trip: demoTrip[index]),
          ),
          child: ListTile(
            title: Text(result.title),
          ),
        );
      },
    );
  }
}
