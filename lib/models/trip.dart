import 'package:flutter/material.dart';
//  RegExp regex = RegExp(r'([.]*0(?!.*\d)');
class Trip {
  final String title;
  final String date;
  final String location;
  final List<String> images;
  final double people;
  final double price;
  final String description;
  final String organizer;

  Trip({
    required this.title,
    required this.images,
    required this.date,
    required this.location,
    this.people = 0.0,
    this.price = 0,
    required this.description,
    required this.organizer,
   
  });
}

// List Trip

List<Trip> demoTrip = [
  Trip(
    images: [
      "assets/image/Mountain3.jpg"
    ],
    title: "Batu Puteh",
    date: "18-20 Feb",
    location: "Tapah, Perak",
    people: 23,
    price: 180,
    description: "Include \n- Permit \n- Powil 4X4 \n- Guide/Sweeper \n- Pengurusan \n- Radio komunikasi \nExclude \n- Ration \n- Ground/fly/tent/hammok",
    organizer: "Jejak Sizuka Outdoor",
    ),
  Trip(
    images: [
      "assets/image/Mountain1.jpg"
    ],
    title: "Gunung Bintang",
    date: "29-30 Apr",
    location: "Gunung Bintang",
    people: 21,
    price: 150,
    description: "Include \n- Permit \n- Powil 4X4 \n- Guide/Sweeper \n- Pengurusan \n- Radio komunikasi \nExclude \n- Ration \n- Ground/fly/tent/hammok",
    organizer: "Jejak Sizuka Outdoor",
    ),
  Trip(
    images: [
      "assets/image/Mountain2.jpg"
    ],
    title: "Gunung Silipat Thailand",
    date: "18-20 Feb",
    location: "Thailand",
    people: 100,
    price: 190,
    description: "Include \n- Permit \n- Powil 4X4 \n- Guide/Sweeper \n- Pengurusan \n- Radio komunikasi \nExclude \n- Ration \n- Ground/fly/tent/hammok",
    organizer: "Kita Hikers",
    ),
  
];
