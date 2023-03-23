import 'package:flutter/material.dart';

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
            // for (int i = 0; i < 10; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
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
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/pizza.png",
                              height: 130),
                        ),
                        const Text(
                          "Hot Pizza",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "Taste our hot pizza",
                          style: TextStyle(
                              fontSize: 16, overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "\$10",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFFe4983e),
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Color(0xFFe4983e),
                              size: 26,
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
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
                          offset: Offset(0, 3))
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/burger.png",
                              height: 130),
                        ),
                        const Text(
                          "Hot Burger",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "Taste our hot burger ",
                          style: TextStyle(
                              fontSize: 16, overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
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
                              Icons.favorite_border,
                              color: Color(0xFFe4983e),
                              size: 26,
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
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
                          offset: Offset(0, 3))
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/salan.png",
                              height: 130),
                        ),
                        const Text(
                          "Hot Salan",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "Taste our chicken salan",
                          style: TextStyle(
                              fontSize: 16, overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
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
                              Icons.favorite_border,
                              color: Color(0xFFe4983e),
                              size: 26,
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
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
                          offset: Offset(0, 3))
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/biryani.png",
                              height: 130),
                        ),
                        const Text(
                          "Hot biryani",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "Taste our hot biryani",
                          style: TextStyle(
                              fontSize: 16, overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
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
                              Icons.favorite_border,
                              color: Color(0xFFe4983e),
                              size: 26,
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
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
                          offset: Offset(0, 3))
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child: Image.asset("assets/images/drink.png",
                              height: 120),
                        ),
                        const Text(
                          "Drinks",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          "Taste our cold drinks",
                          style: TextStyle(
                              fontSize: 16, overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
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
                              Icons.favorite_border,
                              color: Color(0xFFe4983e),
                              size: 26,
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
