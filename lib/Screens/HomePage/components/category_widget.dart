import 'package:flutter/material.dart';
import 'package:commerce_app/models/Product.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: Row(
          children: [
            // single item
            for (int i = 0; i < products.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 3))
                      ]),
                  child: Image.asset(
                    products[i].image,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
