import 'package:commerce_app/Screens/HomePage/components/AppBarWidget.dart';
import 'package:commerce_app/Screens/HomePage/components/drawer_widget.dart';
import 'package:commerce_app/models/Product.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F3),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          children: [
            const AppBarWidget(),
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Text(
                'Wishlist',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 220),
                  itemBuilder: (context, index) {
                    return const ItemCard();
                  }),
            ),
          ],
        ),
      ),
      drawer: const DrawerWidget(),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 3))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18), topRight: Radius.circular(18)),
            child: Image.asset(
              products[0].image,
              height: 140,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  products[0].name,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  products[0].title,
                  style: const TextStyle(fontSize: 17),
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$10",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFFe4983e),
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.cancel,
                      color: Color(0xFFe4983e),
                      size: 26,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
