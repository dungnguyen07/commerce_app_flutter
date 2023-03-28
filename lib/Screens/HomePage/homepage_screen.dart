import 'package:commerce_app/Screens/HomePage/components/AppBarWidget.dart';
import 'package:commerce_app/Screens/HomePage/components/category_widget.dart';
import 'package:commerce_app/Screens/HomePage/components/drawer_widget.dart';
import 'package:commerce_app/Screens/HomePage/components/newestItem_widget.dart';
import 'package:commerce_app/Screens/HomePage/components/popularItem_widget.dart';
import 'package:commerce_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F3),
      body: ListView(
        children: [
          // AppBar
          AppBarWidget(),
          // Search
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3))
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  Icon(
                    Icons.search,
                    color: Color(0xFFe4983e),
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        obscureText: false,
                        decoration: InputDecoration(
                            hintText: "Search items you need!",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Icon(Icons.filter_list)
                ]),
              ),
            ),
          ),

          // Category
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Categories",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),

          // CategoryWidget
          CategoryWidget(),

          //Popular Items
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Popular",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),

          // PopularItemWidget
          PopularItemWidget(),

          Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
            child: Text(
              "Newest",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),

          // NewestItemWidget
          NewestItemWidget(),
        ],
      ),

      drawer: DrawerWidget(),

      // floating button
      floatingActionButton: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3))
        ]),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, "cart");
          },
          child: Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Color(0xFFe4983e),
          ),
        ),
      ),
    );
  }
}
