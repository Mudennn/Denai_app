import 'package:flutter/material.dart';

import 'trip.dart';


class Cart {
  final Trip trip;
  final int numberOfItems;

  Cart({
    required this.trip,
    required this.numberOfItems

  });
  
}

List<Cart> demoCarts = [
    Cart(trip: demoTrip[0], numberOfItems: 1),
    Cart(trip: demoTrip[1], numberOfItems: 1),
    Cart(trip: demoTrip[2], numberOfItems: 1),
  ];