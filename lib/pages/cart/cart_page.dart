import 'package:flutter/material.dart';
import '../../components/check_out_button.dart';
import '../../models/cart.dart';
import 'components/body.dart';

class CartPage extends StatelessWidget {
  static String routeName = "/cart";
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: TopBar(),
      ),
      body: Body(),
      bottomNavigationBar: CheckOutButton(),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
