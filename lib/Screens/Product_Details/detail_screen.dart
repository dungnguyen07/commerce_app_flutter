import 'package:clippy_flutter/arc.dart';
import 'package:commerce_app/Screens/HomePage/components/AppBarWidget.dart';
import 'package:commerce_app/Screens/HomePage/components/drawer_widget.dart';
// import 'package:commerce_app/Screens/Product_Details/ProductDetailNavBar.dart';
import 'package:commerce_app/models/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  dynamic _counter = 1;

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
        backgroundColor: const Color(0xFFe4983e),
        body: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListView(
            children: [
              const AppBarWidget(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  item.image,
                  height: 300,
                ),
              ),
              Arc(
                edge: Edge.TOP,
                arcType: ArcType.CONVEY,
                height: 30,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60, bottom: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  itemCount: 5,
                                  itemSize: 25,
                                  itemPadding:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Color(0xFFe4983e),
                                  ),
                                  onRatingUpdate: (index) {},
                                ),
                                Text(
                                  item.price,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item.name,
                                style: const TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                              Container(
                                width: 90,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: const Color(0xFFe4983e),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        if (_counter > 1) {
                                          setState(() {
                                            _counter--;
                                          });
                                        }
                                      },
                                      child: const Icon(
                                        CupertinoIcons.minus,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ),
                                    Text(
                                      "$_counter",
                                      style: const TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          _counter++;
                                        });
                                      },
                                      child: const Icon(
                                        CupertinoIcons.add,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            item.description,
                            style: const TextStyle(fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery Time:",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                                textAlign: TextAlign.justify,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    child: Icon(CupertinoIcons.clock),
                                  ),
                                  Text(
                                    "30 Minutes",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: const DrawerWidget(),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      "Total:",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      item.price,
                      style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    )
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFe4983e)),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              vertical: 13, horizontal: 15)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                  icon: const Icon(CupertinoIcons.cart_fill),
                  label: const Text(
                    "Add To Cart",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
