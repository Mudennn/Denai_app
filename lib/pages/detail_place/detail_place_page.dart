
import 'package:flutter/material.dart';

import '../../models/place.dart';



class DetailPlacePage extends StatelessWidget {
  static String routeName = "/placedetail";
  const DetailPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}

class PlaceDetailArgument{
  final Place place;

  PlaceDetailArgument({required this.place});

  
}