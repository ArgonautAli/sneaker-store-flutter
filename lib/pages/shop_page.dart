import 'package:flutter/material.dart';
import 'package:nike_ecom/components/shoe_tile.dart';
import 'package:nike_ecom/models/cart.dart';
import 'package:nike_ecom/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    void addShoe(Shoe individualShoe) {
      print("add shoe!");
      Provider.of<Cart>(context, listen: false).addItemsToCart(individualShoe);
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Shoe added to cart!"),
                content: Text("check cart"),
              ));
    }

    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // search bar
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),

                // message
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    "Everyone flies... some fly longer than others",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),

                // hot picks

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot picks 🔥",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text("See all",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),

                // list of shoes
                const SizedBox(
                  height: 10,
                ),

                Expanded(
                    child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          Shoe shoe = value.getShoe()[index];
                          return ShoeTile(
                            shoe: shoe,
                            onTap: () => addShoe(shoe),
                          );
                        })),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    height: 24,
                    color: Colors.transparent,
                  ),
                )
              ],
            ));
  }
}
