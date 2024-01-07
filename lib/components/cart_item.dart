import 'package:flutter/material.dart';
import 'package:nike_ecom/models/shoe.dart';

class CartItem extends StatelessWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(vertical: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Image.asset(shoe.imagePath),
        title: Text(shoe.name),
        subtitle: Text(shoe.price),
      ),
    );
  }
}
