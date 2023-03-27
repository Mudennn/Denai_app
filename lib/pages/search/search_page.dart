import 'package:flutter/material.dart';

import '../../models/trip.dart';
import '../activity/components/body.dart';
import '../detail_trip/detail_trip_page.dart';
import 'components/search_bar.dart';
// import 'components/body.dart';

class SearchPage extends StatelessWidget {
  static String routeName = "/search";
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: 
          Column(
            children: const [
              PreferredSize(
                  preferredSize: Size.fromHeight(80), 
                  child: SearchBar()),
              Body()
            ],
          ),
        
      ),
    );
  }
}

