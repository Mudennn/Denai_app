import 'package:flutter/material.dart';

class Mountain {
  final String location, state;
  final List<String> images;
  final bool isFavourite, isPopular;
  final String difficulty;
  // final double rating, price;

  Mountain({
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

// List mountain

List<Mountain> demoMountain = [
  Mountain(
    images: [
      "image/Mountain3.jpg",
      "image/tezos2.jpg",
      "image/tezos3.jpg",
    ],
    location: "Gunung Kinabalu",
    state: "Sabah",
    difficulty: "Hard",
  ),
  Mountain(
      location: "Bukit Broga",
      state: "Selangor",
      images: ["image/Mountain1.jpg"],
      difficulty: "Easy"),
  Mountain(
      location: "Bukit Manjoi",
      state: "Perak",
      images: ["image/Mountain2.jpg"],
      difficulty: "Medium"),
  Mountain(
      location: "Bukit Selatan",
      state: "Ipoh",
      images: ["image/Mountain2.jpg"],
      difficulty: "Medium"),
];
