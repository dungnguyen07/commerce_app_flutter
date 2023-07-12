import 'package:commerce_app/Screens/Product_Details/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:commerce_app/models/Product.dart';

class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          children: [
            //single Item
            for (var item in products) ItemCard(item: item),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.item,
  });

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        width: 170,
        height: 225,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3))
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                        settings: RouteSettings(arguments: item)));
              },
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(item.image, height: 130),
              ),
            ),
            Text(
              item.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              item.title,
              style: const TextStyle(
                  fontSize: 16, overflow: TextOverflow.ellipsis),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.price,
                  style: const TextStyle(
                      fontSize: 17,
                      color: Color(0xFFe4983e),
                      fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.favorite_border,
                    color: Color(0xFFe4983e),
                    size: 26,
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
