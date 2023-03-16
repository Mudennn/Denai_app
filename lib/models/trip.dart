import 'package:flutter/material.dart';
//  RegExp regex = RegExp(r'([.]*0(?!.*\d)');
class Trip {
  final String title;
  final String date;
  final String location;
  final List<String> images;
  final double people;
  final double price;

  Trip({
    required this.title,
    required this.images,
    required this.date,
    required this.location,
    this.people = 0.0,
    this.price = 0,
   
  });
}

// List Trip

List<Trip> demoTrip = [
  Trip(
    images: [
      "assets/image/Mountain3.jpg"
    ],
    title: "Jejak Sizuka Outdoor",
    date: "18-20 Feb",
    location: "Tapah, Perak",
    people: 23,
    price: 180 
    ),
  Trip(
    images: [
      "assets/image/Mountain1.jpg"
    ],
    title: "Gunung Bintang",
    date: "29-30 Apr",
    location: "Gunung Bintang",
    people: 21,
    price: 150 
    ),
  Trip(
    images: [
      "assets/image/Mountain2.jpg"
    ],
    title: "Gunung Silipat Thailand",
    date: "18-20 Feb",
    location: "Thailand",
    people: 100,
    price: 190 
    ),
  
];
