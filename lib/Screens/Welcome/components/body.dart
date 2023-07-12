import 'package:commerce_app/Screens/Welcome/components/background.dart';
import 'package:commerce_app/components/button_component.dart';
import 'package:commerce_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:commerce_app/models/language_constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // Cung cấp tất cả chiều cao và chiều rộng của màn hình.
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ECOMMERCE APP',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: kButtonColor),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Image.asset(
              "assets/images/logo.png",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            ButtonComponent(
              text: translation(context).login,
              onPressed: () {
                Navigator.pushNamed(context, "login");
              },
            ),
            ButtonComponent(
              text: translation(context).signup,
              color: kPrimaryLightColor,
              textColor: Colors.black,
              onPressed: () {
                Navigator.pushNamed(context, "register");
              },
            )
          ],
        ),
      ),
    );
  }
}
