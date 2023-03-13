import 'package:flutter/material.dart';

class Place {
  final String location, state;
  final List<String> images;
  final bool isFavourite, isPopular;
  final String difficulty;
  // final double rating, price;

  Place({
    required this.location,
    required this.state,
    required this.images,
    this.isFavourite = false,
    this.isPopular = false,
    required this.difficulty,
    // this.rating = 0.0,
    // required this.price,
  });
}

// List Place

List<Place> demoPlace = [
  Place(
    images: [
      "assets/image/Mountain3.jpg",
      "assets/image/tezos2.jpg",
      "assets/image/tezos3.jpg",
    ],
    location: "Gunung Kinabalu",
    state: "Sabah",
    difficulty: "Hard",
  ),
  Place(
      location: "Bukit Broga",
      state: "Selangor",
      images: ["assets/image/Mountain1.jpg"],
      difficulty: "Easy"),
  Place(
      location: "Bukit Manjoi",
      state: "Perak",
      images: ["assets/image/Mountain2.jpg"],
      difficulty: "Medium"),
  Place(
      location: "Bukit Selatan",
      state: "Ipoh",
      images: ["assets/image/Mountain2.jpg"],
      difficulty: "Medium"),
  Place(
      location: "Bukit eh",
      state: "ehhh",
      images: ["assets/image/Mountain1.jpg"],
      difficulty: "Easy"),
];
