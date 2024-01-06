import 'package:flutter/material.dart';
import 'package:nike_ecom/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  void navHome(context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // logo
            Padding(
              padding: const EdgeInsets.all(48.0),
              child: Image.asset(
                'lib/assets/images/nikelogo.png',
                height: 200,
              ),
            ),
            // title
            SizedBox(
              height: 12,
            ),
            const Text(
              "Just do it",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            // subtitle
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Brand new sneakers and custom kicks made with premium materials",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 98,
            ),
            // start button
            GestureDetector(
              onTap: () => navHome(context),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Center(
                      child: Text(
                        "Shop now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
