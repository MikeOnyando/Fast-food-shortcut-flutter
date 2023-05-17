import 'package:flutter/material.dart';

import '../components/order_tile.dart';
import '../shops/mocha.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text(
          "Welcome",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 30,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              OrderTiles(
                imgPath: 'lib/images/coffee6.jpg',
                storeName: "Java",
                onPressed: () {},
              ),
              OrderTiles(
                imgPath: 'lib/images/coffee7.jpg',
                storeName: "StarBucks",
                onPressed: () {},
              ),
              OrderTiles(
                imgPath: 'lib/images/coffee8.jpg',
                storeName: "ArtCaffe",
                onPressed: () {},
              ),
              OrderTiles(
                imgPath: 'lib/images/coffee11.jpeg',
                storeName: "Mocha",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const Mocha())));
                },
              ),
              OrderTiles(
                imgPath: 'lib/images/coffee14.jpeg',
                storeName: "Frappe",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
