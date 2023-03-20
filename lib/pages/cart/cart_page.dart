import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  static String routeName = "/cart";
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
           const Text("Your Cart", style: TextStyle(color: Colors.black),),
            Text("4 items", style: Theme.of(context).textTheme.bodySmall,),
          ],
        ),
      ),
    );
  }
}