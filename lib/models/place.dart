import 'package:flutter/material.dart';

class Place {
  final String location, state;
  final List<String> images;
  final bool isFavourite, isPopular;
  final String difficulty;
  final String description;
  final double length, elavation;

  Place({
    required this.location,
    required this.state,
    required this.images,
    this.isFavourite = false,
    this.isPopular = false,
    required this.difficulty,
    required this.description,
    this.length = 0.0,
    this.elavation = 0,
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
    state: "Kota Kinabalu, Sabah",
    difficulty: "Hard",
    length: 22.5,
    elavation: 2548,
    description: "Enjoy this 22.5-km out-and-back trail near Ranau, Sabah. Generally considered a challenging route, it takes an average of 12 h 54 min to complete. This is a very popular area for backpacking, hiking, and walking, so you'll likely encounter other people while exploring. The trail is open year-round and is beautiful to visit anytime."
  ),
  Place(
      location: "Bukit Broga",
      state: "Semenyih, Selangor",
      images: ["assets/image/Mountain1.jpg"],
      difficulty: "Moderate",
      length: 3.1,
    elavation: 224,
    description: "Discover this 3.1-km loop trail near Semenyih, Selangor. Generally considered a moderately challenging route, it takes an average of 1 h 19 min to complete. This is a very popular area for birding, hiking, and running, so you'll likely encounter other people while exploring. The trail is open year-round and is beautiful to visit anytime."),
  Place(
      location: "Gunung Tok Wan",
      state: "Semenyih, Selangor",
      images: ["assets/image/Mountain2.jpg"],
      difficulty: "Moderate",
      length: 9.2,
    elavation: 704,
    description: "Check out this 9.2-km out-and-back trail near Semenyih, Selangor. Generally considered a moderately challenging route, it takes an average of 4 h 5 min to complete. This is a popular trail for hiking, running, and walking, but you can still enjoy some solitude during quieter times of day. The trail is open year-round and is beautiful to visit anytime."),
  Place(
      location: "Mount Korbu",
      state: "Ulu Kintar, Perak",
      images: ["assets/image/Mountain2.jpg"],
      difficulty: "Hard",
      length: 37.2,
    elavation: 2706,
    description: "Discover this 37.2-km out-and-back trail near Ulu Kinta, Perak. Generally considered a challenging route, it takes an average of 16 h 0 min to complete. This is a popular trail for backpacking, camping, and hiking, but you can still enjoy some solitude during quieter times of day. The trail is open year-round and is beautiful to visit anytime."),
  Place(
      location: "Gunung Nuang",
      state: "Hulu Langat, Selangor",
      images: ["assets/image/Mountain1.jpg"],
      difficulty: "Hard",
      length: 17.9,
    elavation: 1505,
    description: "Try this 17.9-km out-and-back trail near Hulu Langat, Selangor. Generally considered a challenging route. This is a very popular area for camping and hiking, so you'll likely encounter other people while exploring. The trail is open year-round and is beautiful to visit anytime."),
  Place(
      location: "Bukit Gasing",
      state: "Putrajaya, Selangor",
      images: ["assets/image/Mountain2.jpg"],
      difficulty: "Easy",
      length: 2.6,
    elavation: 114,
    description: "Explore this 2.6-km out-and-back trail near Putrajaya, Selangor. Generally considered an easy route, it takes an average of 52 min to complete. This is a popular trail for hiking, mountain biking, and running, but you can still enjoy some solitude during quieter times of day. The trail is open year-round and is beautiful to visit anytime."),
];
