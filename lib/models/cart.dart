import "package:flutter/material.dart";

import "./shoe.dart";

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoesList = [
    Shoe(
        name: "Air Jordan",
        description: "famous shoes",
        price: "\$ 180",
        imagePath: "lib/assets/images/airjordan.png"),
    Shoe(
        name: "Zoom Freak",
        description: "shoes to zoom",
        price: "\$ 286",
        imagePath: "lib/assets/images/airjordan.png"),
    Shoe(
        name: "KD Treys",
        description: "shoes to zoom",
        price: "\$ 220",
        imagePath: "lib/assets/images/airjordan.png"),
  ];
  // list of shoes in cart

  List<Shoe> cart = [];

  // get list of shoes for sale

  List<Shoe> getShoe() {
    return shoesList;
  }

  // get cart

  List<Shoe> getCart() {
    return cart;
  }

  // add items to cart

  void addItemsToCart(Shoe shoe) {
    cart.add(shoe);
    notifyListeners();
  }

  // remove items from cart

  void removeItemFromCart(Shoe shoe) {
    cart.remove(shoe);
    notifyListeners();
  }
}
