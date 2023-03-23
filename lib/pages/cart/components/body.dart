import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';

import '../../../models/cart.dart';
import '../../../size_config.dart';
import 'cart_item_cart.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: ((context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
                key: Key(demoCarts[index].trip.toString()),
                direction: DismissDirection.endToStart,
                background: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: const [
                      Spacer(),
                      Icon(Icons.delete_outline_outlined),
                    ],
                  ),
                ),
                onDismissed: (direction) {
                  setState(() {
                    demoCarts.removeAt(index);
                  });
                },
                child: CartItemCard(cart: demoCarts[index]),
              ),
        )),
      ),
    );
  }
}


// Dismissible(
//             key: Key(demoCarts[0].trip.toString()),
//             background: Container(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               decoration: BoxDecoration(
//                 color: Color(0xFFFFE6E6),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               child: Row(
//                 children: [
//                   Spacer(),
//                   Icon(Icons.delete_outline_outlined)
//                 ],
//               ),
//             ),
//             child: CartItemCard(
//               cart: demoCarts[0],
//             ),),