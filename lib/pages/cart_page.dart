import 'package:flutter/material.dart';
import 'package:nike_ecom/components/cart_item.dart';
import 'package:nike_ecom/models/cart.dart';
import 'package:nike_ecom/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text(
                    "My cart",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getCart().length,
                          itemBuilder: ((context, index) {
                            Shoe individualShoe = value.getCart()[index];
                            return CartItem(shoe: individualShoe);
                          })))
                ],
              ),
            ));
  }
}
