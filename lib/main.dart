import 'package:commerce_app/Screens/Cart/cart.dart';
import 'package:commerce_app/Screens/HomePage/homepage_screen.dart';
import 'package:commerce_app/Screens/Login/login_screen.dart';
import 'package:commerce_app/Screens/Product_Details/detail_screen.dart';
import 'package:commerce_app/Screens/SignUp/register_screen.dart';
import 'package:commerce_app/Screens/Welcome/welcome_screen.dart';
import 'package:commerce_app/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Commerce App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      // home: const WelcomeScreen(),
      routes: {
        "/": (context) => WelcomeScreen(),
        "login": (context) => LoginScreen(),
        "register": (context) => RegisterScreen(),
        "homePage": (context) => HomePage(),
        "cart": (context) => CartScreen(),
        "product_detail": (context) => DetailScreen(),
      },
    );
  }
}
