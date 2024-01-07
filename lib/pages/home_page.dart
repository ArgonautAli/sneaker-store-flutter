import 'package:flutter/material.dart';
import 'package:nike_ecom/components/bottom_navbar.dart';
import 'package:nike_ecom/pages/cart_page.dart';
import 'package:nike_ecom/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [ShopPage(), CartPage()];

  int _selectedIndex = 0;

  void onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void openDrawer(context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 8),
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => openDrawer(context),
            ),
          );
        }),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavbar(
        onTabChange: (index) => onTabChange(index),
      ),
      drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    DrawerHeader(
                        child: Image.asset(
                      "lib/assets/images/nikelogo.png",
                      color: Colors.white,
                      height: 150,
                      width: 150,
                    )),
                    Padding(
                      // padding: const EdgeInsets.all(24.0),
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 24, vertical: 8),
                      child: ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Home",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 24, vertical: 8),
                      child: ListTile(
                        leading: Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                        title: Text(
                          "About",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 24, vertical: 8),
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ])),
    );
  }
}
