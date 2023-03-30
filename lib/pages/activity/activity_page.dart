// import 'package:denai_app/constant.dart';

import 'package:flutter/material.dart';

// import '../../size_config.dart';
import '../search/components/search_bar.dart';
import 'components/body.dart';
import 'components/calander.dart';
import 'components/calender2.dart';

class ActivityPage extends StatelessWidget {
  static String routeName = "/activity";
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  PreferredSize(
                  preferredSize: Size.fromHeight(80), 
                  child: SearchBar()),
      body: CalenderPage2(),
      // body: SingleChildScrollView(
      //   child: 
      //     Column(
      //       children: const [
      //         PreferredSize(
      //             preferredSize: Size.fromHeight(80), 
      //             child: SearchBar()),
      //         // Body()
      //         CalenderPage()
      //       ],
      //     ),
        
      // ),
    );
  }
}
