import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xFFe4983e)),
                accountName: Text(
                  "Nguyễn Dũng",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  "nguyendinhtiendung07@gmai.com",
                  style: TextStyle(fontSize: 16),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Kabuto.png"),
                  backgroundColor: Colors.white,
                ),
              )),

          //single List Item
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.transparent,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "homePage");
            },
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Color(0xFFe4983e),
              ),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.transparent,
              ),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Color(0xFFe4983e),
              ),
              title: Text(
                "My Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.transparent,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "cart");
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.cart_fill,
                color: Color(0xFFe4983e),
              ),
              title: Text(
                "My Orders",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.transparent,
              ),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(
                CupertinoIcons.heart_fill,
                color: Color(0xFFe4983e),
              ),
              title: Text(
                "My WishList",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.transparent,
              ),
            ),
            onPressed: () {},
            child: ListTile(
              leading: Icon(
                Icons.settings,
                color: Color(0xFFe4983e),
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.transparent,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "login");
            },
            child: ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Color(0xFFe4983e),
              ),
              title: Text(
                "Log Out",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
