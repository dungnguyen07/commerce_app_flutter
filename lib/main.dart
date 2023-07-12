import 'package:commerce_app/Screens/Cart/cart.dart';
import 'package:commerce_app/Screens/HomePage/homepage_screen.dart';
import 'package:commerce_app/Screens/Login/login_screen.dart';
import 'package:commerce_app/Screens/Product_Details/detail_screen.dart';
import 'package:commerce_app/Screens/SignUp/register_screen.dart';
import 'package:commerce_app/Screens/Welcome/welcome_screen.dart';
import 'package:commerce_app/Screens/WishList/wishListScreen.dart';
import 'package:commerce_app/constants.dart';
import 'package:commerce_app/models/language_constants.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  Locale? _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) => setLocale(locale));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Commerce App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor, scaffoldBackgroundColor: Colors.white),
      // home: const WelcomeScreen(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: _locale,
      routes: {
        "/": (context) => const WelcomeScreen(),
        "login": (context) => const LoginScreen(),
        "register": (context) => const RegisterScreen(),
        "homePage": (context) => const HomePage(),
        "cart": (context) => const CartScreen(),
        "product_detail": (context) => const DetailScreen(),
        "wishlist": (context) => const WishListScreen()
      },
    );
  }
}
